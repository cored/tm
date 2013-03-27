module TM
  module Format
    class CSV
      def format(entity)
        puts "#{entity.values.join(", ")}"
      end
    end
  end
end
