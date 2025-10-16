const fs = require('fs');
const archiver = require('archiver');
const client = require("ssh2-sftp-client");
const sftp = new client();
require('dotenv').config();

const output = fs.createWriteStream('parkourservern.zip');
const archive = archiver('zip', {
  zlib: { level: 9 }
});

archive.pipe(output);

archive.append(fs.createReadStream('pack.mcmeta'), { name: 'pack.mcmeta' });

archive.directory('data/', 'data');

archive.finalize();

sftp.connect({
    host: process.env.HOST,
    port: process.env.PORT,
    username: process.env.USERNAME,
    password: process.env.PASSWORD
}).then(() => {
    return sftp.put('parkourservern.zip', '/stamsite/datapacks/parkourservern.zip');
}).then(data => {
    console.log(data);
    sftp.end();
}).catch(err => {
    console.error(err);
});