const initPlusMenuDashboard = () => {
  document.getElementById('plus-menu').addEventListener('click',
  function(){
    document.querySelector('.plus-menu-big').style.display = "flex";
  });

  document.querySelector('.plus-menu-big').addEventListener('click',
  function() {
    document.querySelector('.plus-menu-big').style.display = "none";
  });
}

export { initPlusMenuDashboard };
