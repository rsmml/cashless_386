const btns = document.querySelectorAll('.card-body-btn')

btn.on('click', () => {
  btn.addClass('active').siblings().removeClass('active')
});
