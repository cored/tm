require 'rainbow'

module TM
  module Format
    class Pretty
      def format(entity)
        entity.each_pair do |title, value|
          printf("%s: ", title.bright)
          printf("%s\n", value.color(:green))
        end
      end
    end
  end
end
