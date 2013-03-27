require 'tm/version.rb'
require 'taskmapper'
require 'taskmapper-kanbanpad'

module TM

  def list_projects(provider, authentication)
    tm = TaskMapper.new(provider, format_authentication(authentication))
    print_projects(tm.projects)
  rescue NameError => ex
    raise InvalidProvider, "Provider doesn't exist"    
  end

  private
  def format_authentication(authentication)
    res = authentication.split(/,/).inject({}) do |res, kv|
      arg, val = kv.split(/:/)
      res[arg] = val
      res
    end
    res
  end

  def print_projects(projects)
    projects.each do |project|
      printf("%s, %s, %s, %s \n", project.id, project.name, project.created_at, project.updated_at)
    end
  end

  class Error < StandardError; end
  class InvalidProvider < Error; end
end
