# = Dice
#
# ---
#
# = About:
#
# [Author] Cain Alchemist
# [E-Mail] cain.alchemist@gmail.com
# [URL] http://alchemylab.posterous.com
# [Twitter] http://twitter.com/#!/cain_alchemist
#
# Just a sample class as an example for my blog *_Alchemy Laboratory_*
# The just a dice to generate normal Dice rolls. The classs just contains one simple class method which is responsible to make the dice rolls and return an arry.
#
# In this File you will also find a Monkey Patch for array, generating a new method Array#sum, which allow us to sum all array elements. This is very usefull to sum some of the dice rolls in some RPG's
#
# View more about at link:README.rdoc
# 
#/folder2/investigator.rb
#
class Dice
  # This is just a simple method to generate a random value as a Dice. You can input the face which normal would be: 4,6,8,10,12,20,100; and the quantity of times that you want that dice to be rolled.
  def self.roll(face,quantity)
    raise "face must be a Fixnum not #{face.class}" unless face.kind_of? Fixnum
    raise "quantity must be a Fixnum not #{quantity.class}" unless quantity.kind_of? Fixnum
    result = []
    quantity.times{result << rand(face)+1}
    result
  end  
end

# -- Array
#
# Modifies the class array to have a sum method, this allow us to sum the results of a dice roll.
class Array 
  # This method allow us to make a Sum with all array elements
  # Example: [1,2,3,4].sum => 9
  def sum 
    inject( nil ) { |sum,x| sum ? sum+x : x }
  end
end

