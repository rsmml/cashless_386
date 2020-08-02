const initOptionsMenu = () => {
  const optionsMenu = document.querySelector('#navbar-Dropside');
  if (optionsMenu) {
    console.log(optionsMenu);
    optionsMenu.addEventListener('click', () => {
      document.querySelector('.dashboard-container').style.position = "absolute";
      document.querySelector('#navbar-Dropside').style.transition = "0.5s";
      document.querySelector('.dashboard-container').style.transition = "0.5s";
      document.querySelector('.dashboard-container').style.right = "60%";
      document.querySelector('.display-menu-main-container').style.transition = "0.5s";
      document.querySelector('.display-menu-main-container').style.display = "flex";
      document.querySelector('#navbar-Dropside').style.rotate = "270deg";
    });
  };
};


const initOptionsMenuClose = () => {
  const optionsMenuClose = document.querySelector('#dashboard-container');
  if (optionsMenuClose) {
    optionsMenuClose.addEventListener('click', () => {
      document.querySelector('.dashboard-container').style.right = "0%";
      document.querySelector('#navbar-Dropside').style.rotate = "0deg";
    setTimeout(
      function() {
        document.querySelector('.display-menu-main-container').style.display = "none";
      }, 500);
    });
  };
};

export { initOptionsMenuClose, initOptionsMenu };
