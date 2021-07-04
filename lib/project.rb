class Project 
    attr_reader :title

    @@all  = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end

    def get_backed_projects
        ProjectBacker.all.select {|projectbacker_instance| projectbacker_instance.project == self}
    end

    def backers
        get_backed_projects.map {|projectbacker_instance| projectbacker_instance.backer}
    end

    def self.all
        @@all
    end


end #end of Project class