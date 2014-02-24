direct = (opts) ->
  return unless $.isPlainObject opts
  _.reduce _.pairs(opts), (memo, opt) ->
    fn = director.directives[opt[0]] or $.fn[opt[0]]
    return memo unless _.isFunction fn
    fn.call(memo, opt[1])
  , $(@)

@director =
  direct: (el = "html") ->
    $(el).find("[data-direct]").each ->
      direct.call @, $(@).data('direct')
  directives: {}
