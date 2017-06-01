class PaymentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    begin
      charge = Stripe::Charge.create(
        amount: (@product.price * 100).to_i,
        currency: "gbp",
        source: token,
        description: params[:stripeEmail],
        receipt_email: @user.email
      )

      if charge.paid
        Order.create(
          user_id: @user.id,
          product_id: params[:product_id],
          total: @product.price
        )
        flash[:notice] = "Thank you for purchasing #{@product.name}"
      end
    rescue Stripe::CardError => e
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end
end
