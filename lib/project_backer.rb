require 'pry'
require_relative 'backer.rb'
require_relative 'project_backer.rb'
require_relative 'project.rb'

class ProjectBacker

    attr_reader :project, :backer
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer

        @@all << self
    end

    def self.all
        @@all
    end
end
