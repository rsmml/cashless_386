import { BrowserQRCodeReader } from '@zxing/library';

const codeReader = new BrowserQRCodeReader();

codeReader
  .decodeFromInputVideoDevice(undefined, 'video')
  .then((result) => {
    // process the result

    window.location.replace(result.text);

  })
  .catch(err => console.error(err));
