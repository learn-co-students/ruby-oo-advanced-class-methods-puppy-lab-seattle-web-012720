class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        @@all.length.times do |obj|
            puts @@all[obj].name
        end
    end

    def save
        @@all << self
    end

    def name
        @name
    end

end