import "jquery-bar-rating";
require('jquery')
import $ from 'jquery';

const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
