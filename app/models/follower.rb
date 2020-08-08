class Follower

    attr_reader :name, :age, :life_motto
   
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def bloodoaths
        BloodOath.all.select do |bloodoath|
            bloodoath.followers == self
        end
    end

    def cults
        self.bloodoaths.map do |bloodoath_instance|
            bloodoath_instance.cults
        end
    end

    def join_cult(cult)
        BloodOath.new("1232-23-23", self, cult)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower_instance|
            follower_instance.age == age || follower_instance.age >= age
        end
    end
         

end