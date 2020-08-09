require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("name1", "location1", 1910, "be happy")
c2 = Cult.new("name2", "location2", 843, "slay!!")
c3 = Cult.new("name3", "location1", 1234, "woohoo!")
c4 = Cult.new("name4", "location4", 642, "I don't know!")
c5 = Cult.new("name 5", "location2", 324, "Fear is for the weak")
c6 = Cult.new("name 6", "location2", 234, "Live to Eat")

f1 = Follower.new("name1", 46, "love everyone")
f2 = Follower.new("name2", 38, "stop working")
f3 = Follower.new("name3", 22, "ahhhhh")
f4 = Follower.new("name4", 77, "never give up")
f5 = Follower.new("name5", 11, "I want candy")
f6 = Follower.new("name6", 43, "the world is flat")
f7 = Follower.new("name7", 37, "drink more water")
f8 = Follower.new("name8", 2, "wahwah")
f9 = Follower.new("name9", 74, "golf is life")
f10 = Follower.new("name10", 71, "stress causes cancer")

b1 = BloodOath.new("4234-23-34", f1, c1)
b2 = BloodOath.new("2342-23-23", f1, c2)
b3 = BloodOath.new("2343-34-23", f1, c3)
b4 = BloodOath.new("2343-23-55", f1, c4)
b5 = BloodOath.new("1234-56-56", f2, c1)
b6 = BloodOath.new("7654-45-45", f5, c1)
b7 = BloodOath.new("2343-23-55", f3, c6)
b8 = BloodOath.new("1234-56-56", f4, c6)
b9 = BloodOath.new("7654-45-45", f5, c2)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits