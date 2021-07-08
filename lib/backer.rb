class Backer
    attr_reader :name, :back_project
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        backer_array = ProjectBacker.all.select do |project|
            project.backer == self
        end

        backer_array.map do |project_instance|
             project_instance.project
        end
    end
end


# backer projectbacker project person = backer.new("magic")

#map get the right values then cut the nils