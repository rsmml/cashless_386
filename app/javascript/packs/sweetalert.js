import { initSweetalert } from '../plugins/init_sweetalert';

  initSweetalert('#sweet-alert', {
    title: "payment success",
    text: "Thank you!",
    icon: "success",
    button: false
  }, (value) => {
    if (value) {
      const link = document.querySelector('submit-payment');
      link.click();
    }
  });
