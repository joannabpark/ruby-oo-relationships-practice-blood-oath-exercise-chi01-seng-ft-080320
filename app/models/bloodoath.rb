class BloodOath

    attr_reader :date, :follower, :cult

    @@all = []

    def initialize(date, follower, cult)
        @date = date
        @follower = follower
        @cult = cult

        @@all << self
    end

    def initiation_date
        @date
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all.first.follower
    end


end