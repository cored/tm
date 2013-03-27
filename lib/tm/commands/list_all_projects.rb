module TM
  module Commands
    class ListAllProjects
      def initialize(provider_handler, formatter) 
        @provider_handler = provider_handler
        @formatter = formatter
      end

      def execute
        @provider_handler.taskmapper.projects.each do |project|
          @formatter.format(project)
        end
      end
    end
  end
end
