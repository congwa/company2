// default config
module.exports = {
  default_module: "api",
  upimg_url: "https://www.wangcong.fun:8002", // 图片上传到的服务器地址s（写入数据库用） https://www.wangcong.fun:8002
  weixin: {
    appid: "wxb05e5abab9e15b05", // 小程序 appid
    secret: "1e6c0d968ab2bc17c43ad4a93a41c408", // 小程序密钥
    mch_id: "", // 商户帐号ID
    partner_key: "", // 微信支付密钥
    notify_url: "" // 微信异步通知，例：https://www.nideshop.com/api/pay/notify
  },
  express: {
    // 快递物流信息查询使用的是快递鸟接口，申请地址：http://www.kdniao.com/
    appid: "", // 对应快递鸟用户后台 用户ID
    appkey: "", // 对应快递鸟用户后台 API key
    request_url: "http://api.kdniao.cc/Ebusiness/EbusinessOrderHandle.aspx"
  }
};
