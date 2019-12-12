class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       project_finder.compact 
    end

    def project_finder
        ProjectBacker.all.map do |project_backer|
            if project_backer.backer == self 
                project_backer.project  
            end
        end
    end
end