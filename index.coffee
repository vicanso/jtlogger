###*!
* Copyright(c) 2013 vicanso 墨鱼仔
* MIT Licensed
###

Logger = require './lib'
# log4js = require 'log4js'
_ = require 'underscore'
# wrappedFunctions = []
# module.exports = 
#   ###*
#    * moreInfoLog 将logger的输出方法封装一次（输出该log所在的文件行号），尽量只用在error中，因为该方法是创建了一个Error对象，从错误的stack信息获取来的。
#    * @param  {String, Array} funcs 需要封装的log函数
#    * @return {[type]}      [description]
#   ###
#   moreInfoLog : (funcs) ->
#     if !_.isArray funcs
#       funcs = [funcs]
#     _.each funcs, (func) ->
#       handle = Logger.prototype[func]
#       if _.isFunction(handle) && !~_.indexOf wrappedFunctions, func
#         wrappedFunctions.push func
#         Logger.prototype[func] = _.wrap handle, (func, args...) ->
#           err = new Error
#           info = err.stack.split('\n')[3]
#           args.unshift info.trim()
#           func.apply @, args
#   ###*
#    * configure configure配置，调用log4js的configure函数
#    * @param  {[type]} args... [description]
#    * @return {[type]}         [description]
#   ###
#   configure : (args...) ->
#     log4js.configure.apply log4js, args
#   ###*
#    * getLogger 获取一个logger实例
#    * @param  {String, Array} msgPrefix 需要要每条消息前添加的前缀
#    * @param  {String} {optional} category 类别(该category会在每条log中输出，且可用于指定相应的appenders)
#    * @return {Logger}           [description]
#   ###
#   getLogger : (msgPrefix, category) ->
#     return new Logger msgPrefix, category
#   ###*
#    * getConnectLogger 返回用于connect中http的logger方法(该logger的category配置为CONNECT-LOGGER)，为connect中use的函数
#    * @param  {String, Array} msgPrefix 需要要每条消息前添加的前缀
#    * @param  {Object} options connect的http log的配置
#    * @return {Function}           [description]
#   ###
#   getConnectLogger : (msgPrefix, options) ->
#     return log4js.connectLogger @getLogger('', msgPrefix), options
