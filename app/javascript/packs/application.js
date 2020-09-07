import "bootstrap";

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
// import { setupStripe } from '../plugins/init_checkout';
import { initPlusMenuDashboard } from '../components/plus-menu';
import { initStarRating } from '../plugins/init_star_rating';
import { initHistorialMenuUp } from '../components/historial-menu';
// import { initOptionsMenu, initOptionsMenuClose } from '../components/options-menu';
import { initMapbox } from '../plugins/init_mapbox';
import { initSwipe } from '../components/swipe-btn';
import { initExpandTipBtn } from '../components/expand-tip';
import { initTipsCount } from '../components/tips-count';
import { createPaymentIntents } from '../components/stripe-client';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initOptionsMenu();
  // initOptionsMenuClose();
  initMapbox();
  // setupStripe();
  initPlusMenuDashboard();
  initStarRating();
  initHistorialMenuUp();
  initSwipe();
  initExpandTipBtn();
  initTipsCount();
  createPaymentIntents();
});
