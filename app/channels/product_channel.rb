class ProductChannel < ApplicationCable::Channel
  def subscribed
    # byebug
    stream_from "product_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def listen(data)
    # byebug
    stop_all_streams
    stream_for data["product_id"]
  end
  
end
