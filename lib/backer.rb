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
        result = []
        backer_array.map do |backer|
            result << backer  #.reject(nill)
        end

    end
end


# backer projectbacker project person = backer.new("magic")

#map get the right values then cut the nils