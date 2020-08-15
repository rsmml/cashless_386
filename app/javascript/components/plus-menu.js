const initPlusMenuDashboard = () => {
  const plusMenu = document.querySelector('#plus-menu')
  if (plusMenu) {
    plusMenu.addEventListener('click',
    function(){
      document.querySelector('.plus-menu').style.opacity = "1";
      setTimeout(
        function() {
          document.querySelector('.plus-menu').style.opacity = "0.5";
          window.location.href = '/camera';
        }, 500);
    });
  };
};

export { initPlusMenuDashboard };




