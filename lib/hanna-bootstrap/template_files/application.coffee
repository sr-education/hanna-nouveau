do(window, $) -> $ ->

  resultList  = $ '#search-results'
  searchIndex = window.searchIndex
  input       = $ '#search-query'
  base        = $("script[src$='index.js']").attr('src').replace(/^([^j]+)js.*/, (a, b) -> b)

  search = ->
    val = input.val()
    if val.length > 0
      re = new RegExp(val, 'gi')
      res = $.grep searchIndex, (a, b) ->
        re.test(a.method)
    else
      res = searchIndex

    if res && res.length > 0

      resultList.html res.map (a)->
        method = a.method.replace re, (m) -> "<b>#{m}</b>"
        "<li>
          <a href=\"#{ base }#{ a.link }\">
            <strong>#{ method }</strong>
            <small>#{ a.module }</small>
          </a>
        </li>"

      if resultList.is(":hidden")
        resultList.fadeIn()

    else if resultList.is(":visible")
      resultList.fadeOut ->
        resultList.empty()

  input
    .bind('keyup', search)
    .bind('focus', search)
    .bind('blur', ->
      if resultList.is(":visible")
        resultList.fadeOut())

  $('navbar-search').bind('submit', -> false)


      