import { initReviewsAlert } from '../plugins/init_review_alert';

initReviewsAlert('#share-review', {
  title: "Thank you!",
    text: " ",
    button: false
  }, (value) => {
    if (value) {
      setTimeout(function(){
        const link = document.querySelector('#share-review');
        link.click();
      }, 1000);
    }
  });


