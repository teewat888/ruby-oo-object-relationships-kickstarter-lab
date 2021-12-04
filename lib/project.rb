class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        ProjectBacker.all.select {|proj| proj.project == self}.map {|res| res.backer}
    end

end