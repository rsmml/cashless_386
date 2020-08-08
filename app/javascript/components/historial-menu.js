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
      document.querySelector('.last-movements-container').style.height = "30vh";
      document.querySelector('.btn-up-card').style.display = "flex";
      document.querySelector('.btn-down-card').style.display = "none";
    });
  };
};

export { initHistorialMenuUp };




// const initMenuDashboard = () => {
//   const initHistorialMenuUp = () => {
//     document.querySelector('.fa-chevron-up').addEventListener('click',function(){
//       document.querySelector('.last-movements-container').style.height = "90vh";
//       document.querySelector('.fa-chevron-up').style.rotate = "540deg";
//     });
//   };

//   const initHistorialMenuDown = () => {
//     document.querySelector('.last-movements-container').addEventListener('click',function(){
//       document.querySelector('.last-movements-container').style.height = "36vh";
//       document.querySelector('.fa-chevron-up').style.rotate = "0deg";
//     });
//   };

//   if (document.querySelector('.fa-chevron-up').style.rotate === "0deg") {
//     initHistorialMenuUp();
//   } else {
//     initHistorialMenuDown() ;
//   };
// };

