class Project 
  attr_reader :title
  def initialize(title)
    @title = title
  end
  @@all = []
  
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
  
  def backers
    project_list = ProjectBacker.all.select do |projectName|
      projectName.project == self
    end
    project_list.map do |projectName|
      projectName.backer
    end
  end
  
end #end of class Project