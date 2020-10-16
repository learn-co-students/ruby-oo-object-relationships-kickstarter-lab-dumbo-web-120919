require_relative '../lib/backer'
require_relative '../lib/project'

class ProjectBacker
  attr_reader :project, :backer
  @@all = []
  
  def initialize(project, backer)
    @@all << self
    @project = project
    @backer = backer
  end
  
  
  def self.all
    @@all
  end
  
end # end of class ProjectBacker