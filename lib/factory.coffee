class Factory

  _clone: (obj) ->
    return obj if not obj? or typeof obj isnt 'object'
    newInstance = new obj.constructor()
    newInstance[key] = @_clone obj[key] for key of obj
    newInstance

  _merge: (original, overrides) ->
    for key, val of overrides
      original[key] = val
    original

  _define_method: (name, template) ->
    this[name] = (overrides) -> @_merge(@_clone(template), overrides)

  define: (name, template) -> @_define_method(name, template)

module.exports = Factory