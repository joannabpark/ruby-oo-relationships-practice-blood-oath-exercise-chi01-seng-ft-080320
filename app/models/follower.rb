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
            bloodoath.follower == self
        end
    end

    def cults
        self.bloodoaths.map do |bloodoath_instance|
            bloodoath_instance.cult
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

    def my_cults_slogans
        self.cults.map do |cults_instance|
            cults_instance.slogan
        end
    end

    def self.most_active
        self.all.max_by do |follower_instance|
            follower_instance.cults.count
        end
    end

    def self.top_ten
        active_followers = self.all.sort_by do |follower_instance|
            follower_instance.cults.count
        end
        active_followers.last(10)
    end
         

end