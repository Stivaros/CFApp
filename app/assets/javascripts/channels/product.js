App.product = App.cable.subscriptions.create("ProductChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("received checkpoint, product_id: " + data);
    $(".alert.alert-info").show();
  },

  listen_to_comments: function() {
    console.log("listen_to_coments checkpoint");
    return this.perform('listen', {
      product_id: $("[data-product-id]").data("product-id")
    });
  }
});

$(document).on('turbolinks:load', function() {
  console.log("turbolinks:load checkpoint");
  App.product.listen_to_comments();
});