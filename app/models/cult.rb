class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all= []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        Cult.all << self
    end

    def recruit_follower
    end

    def cult_population

    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find do |cult_instance|
            cult_instance.name == name
        end
    end

    def self.find_by_location(location)
       new_array = []
       new_array << self.all.select do |cult_instance|
            cult_instance.location == location
        end
    end

    def self.find_by_founding_year(founding_year)
        self.all.select do |cult_instance|
            cult_instance.founding_year == founding_year
        end
    end


end