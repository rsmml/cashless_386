const initHistorialMenuUp = () => {
  document.querySelector('.fa-chevron-up').addEventListener('click',function(){
    document.querySelector('.last-movements-container').style.height = "90vh";
    document.querySelector('.fa-chevron-up').style.display = "none";
    document.querySelector('.fa-times').style.display = "flex";
    document.querySelector('.fa-times').style.rotate = "540deg";
  });

  document.querySelector('.fa-times').addEventListener('click',function(){
    document.querySelector('.last-movements-container').style.height = "36vh";
    document.querySelector('.fa-chevron-up').style.display = "flex";
    document.querySelector('.fa-times').style.display = "none";
  });
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

