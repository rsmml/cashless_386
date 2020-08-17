const cards = document.querySelectorAll('#dummy-card')

cards.forEach((card) => {
  card.addEventListener('click', function(){
    if (this.classList.contains('active')) {
      this.classList.remove('active');
    } else {
      const activeCards = document.querySelectorAll('.active')
      activeCards.forEach((activeCard) => {
        activeCard.classList.remove('active')
      })
      this.classList.add('active');
    }
  })
})
