#------------------------------ FUNCTION ------------------------------

###toggle slide the selector1 Up or Down when you click on button
button, selector1: selector
time: time of the animation###
toggleSlideUpDown1 = (button, selector,time) -> ($(button).click ->
    if $(selector).css("display") == "none"
        $(selector).slideDown(time)
    else
        $(selector).slideUp(time)
)
toggleSlideUpDown2 = (button1, button2, button3,selector1,selector2,selector3,selector2_3,boderClass,time) -> ($(button1).click ->
    if $(selector1).css("display") == "block"
        setTimeout( -> 
            $(button1).removeClass(boderClass)
        , time)
    else
        $(button1).addClass(boderClass)
    if $(selector1).css("display") == "none"
        if $(selector2).css("display") == "block" && $(selector3).css("display") == "block"
            $(selector2_3).slideUp(time, -> $(selector1).slideDown(time))
        else if $(selector2).css("display") == "block" && $(selector3).css("display") != "block"
            $(selector2).slideUp(time, -> $(selector1).slideDown(time))
            setTimeout( -> 
                $(button2).removeClass(boderClass)
            , time)
        else if $(selector2).css("display") != "block" && $(selector3).css("display") == "block"
            $(selector3).slideUp(time, -> $(selector1).slideDown(time))
            setTimeout( -> 
                $(button3).removeClass(boderClass)
            , time)
        else
            $(selector1).slideDown(time)
    else
        $(selector1).slideUp(time)
)

### make rotate filter row ###
rotateArrow = (button1,button2,button3, arrow1, arrow2, arrow3, cssClass) -> (
    indiceArrow1 = 0
    indiceArrow2 = 0
    indiceArrow3 = 0
    $(button1).click -> 
        if indiceArrow2 == 1 && indiceArrow3 == 1
            $(arrow2).toggleClass(cssClass)
            indiceArrow2 -= 1
            $(arrow3).toggleClass(cssClass)
            indiceArrow3 -= 1
            $(arrow1).toggleClass(cssClass)
        else if indiceArrow2 == 1 && indiceArrow3 == 0
            $(arrow2).toggleClass(cssClass)
            indiceArrow2 -= 1
            $(arrow1).toggleClass(cssClass)
        else if indiceArrow2 == 0 && indiceArrow3 == 1
            $(arrow3).toggleClass(cssClass)
            indiceArrow3 -= 1
            $(arrow1).toggleClass(cssClass)
        else 
            $(arrow1).toggleClass(cssClass)
        if indiceArrow1 == 0
            indiceArrow1 += 1
        else 
            indiceArrow1 -= 1
    
    $(button2).click -> 
        if indiceArrow1 == 1 && indiceArrow3 == 1
            $(arrow1).toggleClass(cssClass)
            indiceArrow1 -= 1
            $(arrow3).toggleClass(cssClass)
            indiceArrow3 -= 1
            $(arrow2).toggleClass(cssClass)
        else if indiceArrow1 == 1 && indiceArrow3 == 0
            $(arrow1).toggleClass(cssClass)
            indiceArrow1 -= 1
            $(arrow2).toggleClass(cssClass)
        else if indiceArrow1 == 0 && indiceArrow3 == 1
            $(arrow3).toggleClass(cssClass)
            indiceArrow3 -= 1
            $(arrow2).toggleClass(cssClass)
        else 
            $(arrow2).toggleClass(cssClass)
        if indiceArrow2 == 0
            indiceArrow2 += 1
        else 
            indiceArrow2 -= 1

    $(button3).click -> 
        if indiceArrow1 == 1 && indiceArrow2 == 1
            $(arrow1).toggleClass(cssClass)
            indiceArrow1 -= 1
            $(arrow2).toggleClass(cssClass)
            indiceArrow2 -= 1
            $(arrow3).toggleClass(cssClass)
        else if indiceArrow1 == 1 && indiceArrow2 == 0
            $(arrow1).toggleClass(cssClass)
            indiceArrow1 -= 1
            $(arrow3).toggleClass(cssClass)
        else if indiceArrow1 == 0 && indiceArrow2 == 1
            $(arrow2).toggleClass(cssClass)
            indiceArrow2 -= 1
            $(arrow3).toggleClass(cssClass)
        else 
            $(arrow3).toggleClass(cssClass)
        if indiceArrow3 == 0
            indiceArrow3 += 1
        else 
            indiceArrow3 -= 1
    
)


#------------------------------ LAYOUTS ------------------------------
$(document).ready( ->

#filter dropdown
    
    toggleSlideUpDown2('.filter-dropdown-category-button', '.filter-dropdown-color-button', '.filter-dropdown-order-button',
    '.filter-dropdown-category-content','.filter-dropdown-color-content','.filter-dropdown-order-content','.filter-dropdown-color-content, .filter-dropdown-order-content', 
    "button-border", 500)
    
    toggleSlideUpDown2('.filter-dropdown-color-button','.filter-dropdown-category-button','.filter-dropdown-order-button', 
    '.filter-dropdown-color-content','.filter-dropdown-category-content','.filter-dropdown-order-content','.filter-dropdown-category-content, .filter-dropdown-order-content', 
    "button-border",500)
    
    toggleSlideUpDown2('.filter-dropdown-order-button','.filter-dropdown-category-button','.filter-dropdown-color-button', 
    '.filter-dropdown-order-content','.filter-dropdown-category-content','.filter-dropdown-color-content','.filter-dropdown-category-content, .filter-dropdown-color-content', 
    "button-border", 500)


#set dropdown content width to 100%
    $('.filter-nav').click ->
        $('.filter-nav-dropdown div').width($('.filter-nav').width())

    
# make rotate filtre arrow when you click
    rotateArrow('.filter-dropdown-category-button','.filter-dropdown-color-button', '.filter-dropdown-order-button'
    ,'.category-arrow-target', '.color-arrow-target', '.order-arrow-target', "arrow-rotate")
    
# manage de grille article width
    # windowWidth = $(window).width()
    # articleWidth = windowWidth/5
    # articleHeight = articleWidth*0.6661
    # $('.item-article_tag').width(articleWidth)
    # $('.item-article_tag').height(articleHeight)

    #if
    #alert(windowWidth)
)