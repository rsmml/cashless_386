import { initSubscribeAlert } from '../plugins/init_subscribe_alert';

  initSubscribeAlert('#subscribe-alert', {
    title: "Thank you for your subscription!",
    text: "see you soon.",
    button: false
  }, (value) => {
    if (value) {
      setTimeout(function() {
        const link = document.querySelector('#subscribe-alert');
        link.click();
      }, 700);
    }
  });
