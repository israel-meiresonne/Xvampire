module ApplicationHelper

    
    def brand_name
        @name = "XVAMPIRE"
    end

    def link_color(index)
        color_array = ["color: #00174F", "color: white"]
        color = color_array[index]
        return color
    end

end
