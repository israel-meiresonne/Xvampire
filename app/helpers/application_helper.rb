module ApplicationHelper

    
    def brand_name
        @name = "I & M E I M"
    end

    def link_color(index)
        color_array = ["color: #00174F", "color: white"]
        color = color_array[index]
        return color
    end

end
