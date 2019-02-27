class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects.include?(self) ? nil : backer.back_project(self) #<----- stops the infinite loop caused by the checking between classes
  end

end #<-----CLASS end
