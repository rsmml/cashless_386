const showCard = () => {
  marker.addEventListener('click', function(){
    document.querySelector('.vendors-container-on-map').style.display = "flex";
  });
}

const markers = document.querySelectorAll('.mapboxgl-marker')
markers.forEach((marker) => showCard() );
