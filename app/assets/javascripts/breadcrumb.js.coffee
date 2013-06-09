humanize = (string) ->
  string.replace(/_/g, " ").capitalize()

unless String::capitalize?
  String::capitalize = -> this.replace /(^|\s)([a-z])/g , (m,p1,p2) -> p1+p2.toUpperCase()

paths = document.location.pathname.split('/')

paths = (path for path in paths when path isnt "")

ps = []
currpath = "/"
#ps.push
#  compo: "/"
#  name: "Home"

for path in paths
  currpath += path + "/"
  ps.push
    compo: currpath
    name: humanize path

$(document).ready ->
  $breadcrumb = $(".breadcrumb")

  last = ps.pop()

  for p in ps
    $breadcrumb.append("<li><a href=\"#{p.compo}\">#{p.name}</a> <span class=\"divider\">/</span></li>")

  $breadcrumb.append("<li class=\"active\">#{last.name}</li>") if last?