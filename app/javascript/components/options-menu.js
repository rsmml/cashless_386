const initOptionsMenu = () => {
  document.querySelector('#navbarDropdown').addEventListener('click', function(){
    document.querySelector('.dashboard-container').style.position = "absolute";
    document.querySelector('#navbarDropdown').style.transition = "0.5s";
    document.querySelector('.dashboard-container').style.transition = "0.5s";
    document.querySelector('.dashboard-container').style.right = "60%";
    document.querySelector('.display-menu-main-container').style.transition = "0.5s";
    document.querySelector('.display-menu-main-container').style.display = "flex";
    document.querySelector('#navbarDropdown').style.rotate = "270deg";
  });
};

export { initOptionsMenu };

const initOptionsMenuClose = () => {
  document.querySelector('#dashboard-container').addEventListener('click', function(){
    document.querySelector('.dashboard-container').style.right = "0%";
    document.querySelector('#navbarDropdown').style.rotate = "0deg";
  setTimeout(
    function() {
      document.querySelector('.display-menu-main-container').style.display = "none";
    }, 500);
  });
};

export { initOptionsMenuClose };
