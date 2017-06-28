  // Script for Raty
  var refreshRating = function() {
    $('.product-rating').raty( {path: '/assets', scoreName: 'comment[rating]' });
    $('.product-rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
  };
  // End Raty

$(document).on('turbolinks:load', function() {

  // Script for elevateZoom
  $('.elevate-zoom').elevateZoom({
  zoomType: "lens",
  lensShape: "round",
  lensSize: 100
  });
  // End elevateZoom

  // Call Raty
  refreshRating();
});