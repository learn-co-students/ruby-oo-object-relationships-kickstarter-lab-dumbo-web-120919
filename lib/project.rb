require 'pry'
require_relative 'backer.rb'
require_relative 'project_backer.rb'
require_relative 'project.rb'

class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        backer_object = ProjectBacker.all.select do |backer_instance|
            backer_instance.project == self
        end

        backer_object.map do |backers|
            backers.backer
        end
    end
end
