require 'asciiart'

module Eat
  module Berlin
    class Base

      def draw_hello
        a = AsciiArt.new("/Users/Benjamin/Desktop/me.jpg")
        puts a.to_ascii_art
      end

    end
  end
end
