class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        returned_backers = ProjectBacker.all.map do |backer_instance|
            backer_instance.backer if backer_instance.project == self
        end
        returned_backers.delete_if { |thing| thing == nil }
        returned_backers
    end

end