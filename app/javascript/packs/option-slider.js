var slideout = new Slideout({
  'panel': document.getElementById('panel'),
  'menu': document.getElementById('menu'),
  'padding': 256,
  'tolerance': 70,
  'side': "right",
});
// Toggle button
document.querySelector('#navbar-Dropside').addEventListener('click', function() {
  slideout.toggle();
});
