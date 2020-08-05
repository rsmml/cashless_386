const initPlusMenuDashboard = () => {
  const plusMenu = document.querySelector('#plus-menu')
  if (plusMenu) {
    plusMenu.addEventListener('click',
    function(){
      document.querySelector('.plus-menu-big').style.display = "flex";
    });

    document.querySelector('#dashboard-container').addEventListener('click',
    function() {
      document.querySelector('.plus-menu-big').style.display = "none";
    });
  };
};

export { initPlusMenuDashboard };
