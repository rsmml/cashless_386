const initHistorialMenuUp = () => {
  const history = document.querySelector('.fa-chevron-up');
  if (history) {
    history.addEventListener('click',function(){
      document.querySelector('.last-movements-container').style.height = "75vh";
      document.querySelector('.btn-up-card').style.display = "none";
      document.querySelector('.btn-down-card').style.display = "flex";
      document.querySelector('.btn-down-card').style.rotate = "540deg";
    });

    document.querySelector('.fa-times').addEventListener('click',function(){
      document.querySelector('.last-movements-container').style.height = "37.8vh";
      document.querySelector('.btn-up-card').style.display = "flex";
      document.querySelector('.btn-down-card').style.display = "none";
    });
  };
};

export { initHistorialMenuUp };
