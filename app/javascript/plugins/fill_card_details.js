
const fillCardDetails = () => {
  // const iframe = document.getElementsByName("__privateStripeFrame5");
  const cardNumber = document.querySelector(".CardField-number input");
  const cardExpiry = document.querySelector(".CardField-expiry input");
  const cardCvc = document.querySelector(".CardField-cvc input");

  const card = document.getElementById("card")

  if (card) {
    card.addEventListener('click', e => {
      cardNumber.value = "4263982640269299";
      cardExpiry.value = "02/23";
      cardCvc = "837";
    })
  };
};


export { fillCardDetails };

// __PrivateStripeElement-input
