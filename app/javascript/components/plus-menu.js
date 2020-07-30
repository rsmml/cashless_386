const initPlusMenuDashboard = () => {
  document.querySelector('#plus-menu').addEventListener('click',
  function(){
    document.querySelector('.plus-menu-big').style.display = "flex";
  });

  document.querySelector('.plus-menu-big').addEventListener('click',
  function() {
    document.querySelector('.plus-menu-big').style.display = "none";
  });
}

export { initPlusMenuDashboard };
