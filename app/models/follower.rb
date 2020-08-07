class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        Follower.all << self
    end

    def cults

    end

    def join_cult

    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        new_array = []
       new_array << self.all.select do |follower_instance|
            follower_instance.age == age || follower_instance.age >= age
        end
    end
         

end