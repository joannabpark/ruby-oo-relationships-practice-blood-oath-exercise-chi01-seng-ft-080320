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

f1 = Follower.new("name1", 46, "love everyone")
f2 = Follower.new("name2", 38, "stop working")
f3 = Follower.new("name3", 22, "ahhhhh")

b1 = BloodOath.new("1234-23-34", f1, c1)
b2 = BloodOath.new("2342-23-23", f2, c1)
b3 = BloodOath.new("2343-34-23", f2, c2)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits