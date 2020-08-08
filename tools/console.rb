require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("name1", "location1", 1910, "be happy")
c2 = Cult.new("name2", "location2", 843, "slay!!")
c3 = Cult.new("name3", "location3", 1234, "woohoo!")
c4 = Cult.new("name4", "location4", 642, "I don't know!")

f1 = Follower.new("name1", 46, "love everyone")
f2 = Follower.new("name2", 38, "stop working")
f3 = Follower.new("name3", 22, "ahhhhh")
f4 = Follower.new("name4", 77, "never give up")
f5 = Follower.new("name5", 11, "I want candy")

b1 = BloodOath.new("1234-23-34", f1, c1)
b2 = BloodOath.new("2342-23-23", f2, c2)
b3 = BloodOath.new("2343-34-23", f2, c3)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits