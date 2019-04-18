// default config
module.exports = {
  default_module: 'api',
  upimg_url: 'https://www.wangcong.fun:8002', // 图片上传到的服务器地址s（写入数据库用） https://www.wangcong.fun:8002
  weixin: {
    appid: 'wxb02b4a9c72aacbf3', // 小程序 appid
    secret: 'e74ce0e56289dd95341f52dfdc9e1b0c', // 小程序密钥
    mch_id: '', // 商户帐号ID
    partner_key: '', // 微信支付密钥
    notify_url: '' // 微信异步通知，例：https://www.nideshop.com/api/pay/notify
  },
  express: {
    // 快递物流信息查询使用的是快递鸟接口，申请地址：http://www.kdniao.com/
    appid: '', // 对应快递鸟用户后台 用户ID
    appkey: '', // 对应快递鸟用户后台 API key
    request_url: 'http://api.kdniao.cc/Ebusiness/EbusinessOrderHandle.aspx'
  }
};
