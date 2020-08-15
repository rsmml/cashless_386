const initPlusMenuDashboard = () => {
  const plusMenu = document.querySelector('#plus-menu')
  if (plusMenu) {
    plusMenu.addEventListener('click',
      window.location.href = '/camera');
  };
};

export { initPlusMenuDashboard };




