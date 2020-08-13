const initExpandTipBtn = () => {
  const btn = document.getElementById('expand-btn')
  if (btn) {
    btn.addEventListener('click', () => {
      btn.style.width = "170px";
      btn.placeholder = "Add some coins";
    })
  };

  const outBtns = document.querySelectorAll('.outBtn')
  if (outBtns){
    outBtns.forEach((button) => {
      button.addEventListener('click', () => {
        btn.style.width = "74px";
        btn.placeholder = "€...";
      })
    });
  };
};
export { initExpandTipBtn };
