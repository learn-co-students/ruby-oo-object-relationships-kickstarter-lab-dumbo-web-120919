class Backer

    attr_reader :name

        def initialize(name)
            @name = name 
        end

        def back_project(project)
            ProjectBacker.new(project, self)
        end

        def project_backers
            ProjectBacker.all.select do |projectbacker_instance|
            projectbacker_instance.backer == self
            end
        end

        def backed_projects
            self.project_backers.map do |project_backers|
            project_backers.project
            end
        end

end