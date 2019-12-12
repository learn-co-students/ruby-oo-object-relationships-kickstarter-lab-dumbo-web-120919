class Backer 
    attr_reader :name

    @@all  = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

    def get_project_backer
        ProjectBacker.all.select {|projectbacker_instance| projectbacker_instance.backer == self}
    end

    def backed_projects
        get_project_backer.map {|projectbacker_instance| projectbacker_instance.project}
    end

    def self.all
        @@all
    end

end #end of Backer class