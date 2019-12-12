class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        backer_finder.compact 
     end
 
     def backer_finder
         ProjectBacker.all.map do |project_backer|
             if project_backer.project == self 
                 project_backer.backer  
             end
         end
     end
end