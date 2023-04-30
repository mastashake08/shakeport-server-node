const quic = require('node-quic');
// const fs = require('fs');
//
// const key = fs.readFileSync('key.pem');
// const cert = fs.readFileSync('cert.pem');

const port    = 1234
const address = '127.0.0.1'     // default

quic.listen(port, address)
  .then(() => {
    console.log('LISTENING....')
  })
  .onError((error) => {

  })
  .onData(
    (data, stream, buffer) => {

    })
