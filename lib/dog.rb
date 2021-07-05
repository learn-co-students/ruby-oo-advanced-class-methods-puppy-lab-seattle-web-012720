class Dog
    @@all = []

    def self.all
        @@all
    end
    attr_reader :name
    def initialize(name)
        @name = name
        self.save
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each do |dog|
            puts dog.name
        end
    end

    def save
        self.class.all << self
    end
end