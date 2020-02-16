# Dani van Enk, 11823526

=begin
Usage of strftime arguments https://github.com/sugi/wareki
Jekyll plugin usage:
https://www.dev4app.com/archives/7395520-how-does-jekyll-date-formatting-work.html
=end

require "wareki"
module Jekyll
    module JapaneseDates
        def JapaneseDate(date)
            d = Date.parse(date.to_s)
            d.strftime("%Jf")
        end
    end        
end

Liquid::Template.register_filter(Jekyll::JapaneseDates)