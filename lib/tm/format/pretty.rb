module TM
  module Format
    class Pretty
      def format(entity)
        entity.each_pair do |title, value|
          printf("%s: ", title)
          printf("%s\n", value)
        end
      end
    end
  end
end
