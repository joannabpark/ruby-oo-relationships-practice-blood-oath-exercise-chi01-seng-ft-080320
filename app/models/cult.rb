class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all= []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new("1232-23-23", follower, self)
    end

    def bloodoaths
        BloodOath.all.select do |bloodoath_instance|
            bloodoath_instance.cult == self
        end
    end

    def followers
        self.bloodoaths.map do |bloodoath_instance|
            bloodoath_instance.follower
        end
    end

    def cult_population
       self.followers.count
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
       self.all.select do |cult_instance|
            cult_instance.location == location
        end
    end

    def self.find_by_founding_year(founding_year)
        self.all.select do |cult_instance|
            cult_instance.founding_year == founding_year
        end
    end


end