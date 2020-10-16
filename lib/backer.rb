require_relative '../lib/project'

class Backer
  
attr_reader :name, :project

  @@all = []
  
  def initialize(name)
    @name = name
  end

def back_project(project)
  ProjectBacker.new(project, self)
end
  
def backed_projects
    project_backer_list = ProjectBacker.all.select do |backerName|
      backerName.backer == self
    end
    project_backer_list.map do |backerName|
      backerName.project
    end
  end
  
end # end of class Backer