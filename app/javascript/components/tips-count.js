const initTipsCount = () => {
  const buttons = document.querySelectorAll('.btn-light')
  if (buttons){
    buttons.forEach((button) => {
      const amountString = document.querySelector('.form-control').placeholder
      const amountInteger = parseInt(amountString,10);
      const tip = document.querySelector('.tips-count-text')
      const tipPlus = document.querySelector('.plus-tips-count-text')
      button.addEventListener('click', () => {
        tip.style.display = "flex";
        tipPlus.style.display = "flex";
        if (button.innerHTML === "5%"){
          tip.innerHTML = (amountInteger*0.05);
          // amountString.placeholder = (amountInteger*1.05);
        } else if (button.innerHTML === "10%") {
          tip.innerHTML = (amountInteger*0.1);
          // amountString.placeholder = (amountInteger*1.1);
        } else if (button.innerHTML === "15%") {
          tip.innerHTML = (amountInteger*0.15);
          // amountString.placeholder = (amountInteger*1.15);
        } else {
          const value = document.querySelector('#expand-btn').value;
          tip.innerHTML = value;
          // amountString = (amountInteger+value);
        }
      })
    });
  };
};
export { initTipsCount };
