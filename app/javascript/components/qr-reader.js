

const initCamera = () => {
  const window = window.location.pathname == '/dashboards/camera'
  if (window) {
    const codeReader = new BrowserQRCodeReader();
    console.log(codeReader);

    codeReader
    .decodeOnceFromVideoDevice(undefined, 'video')
    .then(result => {
    console.log(result.text)
    window.href = "https://google.com"
      })
    .catch(err => console.error(err));
  };
};

export { initCamera };



