
const crypto = require('crypto');
const fs = require('fs');
module.exports = class extends think.Service {
  /**
   * 根据header中的X-Nideshop-Token值获取用户id
   */
  async readFileMd5(url) {
    return new Promise((resolve) => {
      const md5sum = crypto.createHash('md5');
      const stream = fs.createReadStream(url);
      stream.on('data', function(chunk) {
        md5sum.update(chunk);
      });
      stream.on('end', function() {
        const fileMd5 = md5sum.digest('hex');
        resolve(fileMd5);
      });
    });
  }
};
