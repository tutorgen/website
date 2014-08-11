window.helloText = -> 'Hello, World!'

window.hello = ->
    html = JST['app/templates/hello.us'](text: helloText())
    document.body.innerHTML += html

    $('a.link-work').on 'click', -> 
        $.scrollTo '#work', 500

    $('a.link-partners').on 'click', ->
        $.scrollTo '#partners', 500

    $('a.link-team').on 'click', ->
        $.scrollTo '#team', 500

    $('a.link-contact').on 'click', ->
        $.scrollTo '#contact', 500

    $('a.left-off-canvas-toggle').on 'click', ->
        $.scrollTo '#small-menu', 500

    $(document).foundation();

if window.addEventListener
    window.addEventListener('DOMContentLoaded', hello, false)
else
    window.attachEvent('load', hello)