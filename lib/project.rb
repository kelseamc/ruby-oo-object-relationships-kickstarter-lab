class Project 
    attr_reader :title 

    def initialize(title)
        @title = title 
        @backers = []
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select {|pro| @backers << pro.backer if pro.project == self}
        @backers
    end
end 
