norm_path = if document.location.pathname.endsWith '/'
              document.location.pathname
            else
              document.location.pathname + '/'

paths = document.location.pathname.split('/')

paths = (path for path in paths when path isnt "")

paths.pop()

humanize = (string) ->
  string.replace(/_/g, " ").capitalize()

String::capitalize = -> this.replace /(^|\s)([a-z])/g , (m,p1,p2) -> p1+p2.toUpperCase()

up_name = humanize paths.pop()

$(document).ready ->
  $up = $('.pager .up')
  $up.text up_name
  $up.attr 'href', norm_path + 'up'
  $('.pager .previous').attr 'href', norm_path + 'previous'
  $('.pager .next').attr 'href', norm_path + 'next'