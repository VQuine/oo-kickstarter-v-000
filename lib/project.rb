class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    # backer.back_project(self) unless backer.backed_projects.include?(self)
    if !backer.backed_projects.include?(self)
      backer.back_project(self)
    end
  end

end #<-----CLASS end
