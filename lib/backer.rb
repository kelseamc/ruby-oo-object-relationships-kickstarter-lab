require 'pry' 
class Backer 

    attr_accessor
    attr_reader :name 

    def initialize(name)
        @name = name 
        @projects = []
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects 
         ProjectBacker.all.select do |pb| 
             @projects << pb.project if pb.backer == self 
        end
        # binding.pry
         @projects 
        # ProjectBacker.all.select {|project| project.backer == self.name}
    end 
end 

