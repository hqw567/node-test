const crypto = require('crypto')
const fs = require('fs')
const path = require('path')
const { publicKey, privateKey } = crypto.generateKeyPairSync('rsa', {
  modulusLength: 2048,
  publicKeyEncoding: {
    type: 'spki',
    format: 'pem',
  },
  privateKeyEncoding: {
    type: 'pkcs8',
    format: 'pem',
  },
})
const keysFolderPath = path.join(__dirname, '/keys')
if (!fs.existsSync(keysFolderPath)) {
  fs.mkdirSync(keysFolderPath)
}

fs.writeFileSync(path.join(keysFolderPath, 'public_key.pem'), publicKey)
fs.writeFileSync(path.join(keysFolderPath, 'private_key.pem'), privateKey)
