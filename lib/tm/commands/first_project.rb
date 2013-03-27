module TM
  module Commands
    class FirstProject
      def initialize(provider_handler, formatter)
        @provider_handler = provider_handler
        @formatter = formatter
      end

      def execute
        @formatter.format(@provider_handler.taskmapper.projects.first)
      end
    end
  end
end
