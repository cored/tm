require 'tm/version.rb'
require 'tm/provider_handler'
require 'tm/exceptions'

module TM

  def list_projects(provider_handler)
    print_projects(provider_handler.projects)
  rescue NameError => ex
    raise InvalidProvider, "Provider doesn't exist"    
  end

  private
  def print_projects(projects)
    projects.each do |project|
      printf("%s, %s, %s, %s \n", project.id, project.name, project.created_at, project.updated_at)
    end
  end

end
