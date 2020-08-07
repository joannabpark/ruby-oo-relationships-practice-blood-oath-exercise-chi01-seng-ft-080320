class BloodOath

    attr_reader :date, :followers, :cult

    @@all = []

    def initialize(date, followers, cult)
        @date = date
        @followers = followers
        @cult = cult
        BloodOath.all << self
    end

    def initiation_date
        @date
    end

    def self.all
        @@all
    end


end