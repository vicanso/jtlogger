###*!
* Copyright(c) 2013 vicanso 腻味
* MIT Licensed
###

Logger = require './lib'
log4js = require 'log4js'
module.exports = 
  ###*
   * configure configure配置，调用log4js的configure函数
   * @param  {[type]} args... [description]
   * @return {[type]}         [description]
  ###
  configure : (args...) ->
    log4js.configure.apply log4js, args
  ###*
   * getLogger 获取一个logger实例
   * @param  {String, Array} msgPrefix 需要要每条消息前添加的前缀
   * @param  {String} category 类别(该category会在每条log中输出，且可用于指定相应的appenders)
   * @return {Logger}           [description]
  ###
  getLogger : (msgPrefix, category) ->
    return new Logger msgPrefix, category
  ###*
   * getConnectLogger 返回用于connect中http的logger实例(该logger的category配置为CONNECT-LOGGER)
   * @param  {String, Array} msgPrefix 需要要每条消息前添加的前缀
   * @param  {Object} options connect的http log的配置
   * @return {Logger}           [description]
  ###
  getConnectLogger : (msgPrefix, options) ->
    return log4js.connectLogger @getLogger(msgPrefix, 'CONNECT-LOGGER'), options