const initPlusMenuDashboard = () => {
  const plusMenu = document.querySelector('#plus-menu')
  if (plusMenu) {
    plusMenu.addEventListener('click',
    function(){
      document.querySelector('.plus-menu').style.opacity = "1";
      setTimeout(
        function() {
          document.querySelector('.plus-menu').style.opacity = "1";
          window.location.href = '/camera';
        }, 0);
    });
  };
};

export { initPlusMenuDashboard };




