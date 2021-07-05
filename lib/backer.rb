require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        returned_projects = ProjectBacker.all.map do |project_instance|
            project_instance.project if project_instance.backer == self
        end
        returned_projects.delete_if { |thing| thing == nil }
        returned_projects
    end
end