const cards = document.querySelectorAll('#dummy-card')

cards.forEach((card) => {
  card.addEventListener('click', function(){
    if (this.classList.contains('active')) {
      this.classList.remove('active');
    } else {
      this.classList.add('active');
    }
  })
})
