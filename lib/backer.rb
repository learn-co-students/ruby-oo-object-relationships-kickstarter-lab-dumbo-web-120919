require 'pry'
require_relative 'backer.rb'
require_relative 'project_backer.rb'
require_relative 'project.rb'

class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        project_object = ProjectBacker.all.select do |project_instance|
            project_instance.backer == self
        end

        project_object.map do |projects|
            projects.project
        end
    end
end
