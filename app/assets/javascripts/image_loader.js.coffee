@ImageLoader = do ->

  load: (path) ->
    deferred = $.Deferred()
    image = new Image()
    image.src = path
    if image.complete
      deferred.resolve(image)
    else
      image.onload = -> deferred.resolve(image)
    deferred.promise()
