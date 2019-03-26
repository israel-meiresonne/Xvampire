# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

#faire descendre les catégorie
    $('#femme').mouseenter ->
        $('.categories_women-container').slideDown(400)
            
#faire remonter liste des catégories   
    $('.categories_women-container').mouseleave ->
        $('.categories_women-container').slideUp(400)
    $('.main-navbar').mouseenter ->
        $('.categories_women-container').slideUp(400)

#onglet de connection
    $('.login-button').click ->
        if $('.second-navbar').css("display") == "block"
            $('.second-navbar').slideUp(400, -> $('.login-sign_up-div').slideDown(400))
        else
            $('.login-sign_up-div').slideUp(400, -> $('.second-navbar').slideDown(400))
        
    
