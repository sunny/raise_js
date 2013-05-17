(function(window) {

  var previousOnError = window.onerror

  window.onerror = function(msg, url, line) {
    $.post('/javascript-errors', { msg: msg, url: url, line: line })

    if (previousOnError)
      previousOnError(msg, url, line)

    return false // use the browser's default handler
  }

})(window)
