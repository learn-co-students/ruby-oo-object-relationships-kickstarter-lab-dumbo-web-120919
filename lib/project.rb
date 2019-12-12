class Project
    attr_reader :title, :add_backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_array = ProjectBacker.all.select do |project_instance|
            project_instance.project == self
        end

        backer_array.map do |project_instance|
             project_instance.backer
        end
    end
end