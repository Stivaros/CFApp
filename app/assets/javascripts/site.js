$(document).ready(function(){
  $('.product-rating').raty( {path: '/assets', scoreName: 'comment[rating]' });
  $('.product-rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});