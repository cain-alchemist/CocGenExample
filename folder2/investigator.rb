# = Investigator
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
# The first part of the class is at /folder1/investigator.rb . This was necessary to show this example.
#
# View more about at link:README.rdoc
# 
#/folder2/investigator.rb
#
require './folder2/dice.rb'
class Investigator
  # This method generates randomly values to the primary attributes.
  # Please see the monkey patch bellow the class Investigator, because without it the method this method won't work. The monkey patch adds a method at the Array class Array#sum.
  def auto_roll_primary_attributes
    self.str = Dice.roll(6,3).sum
    self.dex = Dice.roll(6,3).sum
    self.con = Dice.roll(6,3).sum
    self.siz = Dice.roll(6,2).sum + 6
    self.int = Dice.roll(6,2).sum + 6
    self.pow = Dice.roll(6,3).sum
    self.app = Dice.roll(6,3).sum
    self.edu = Dice.roll(6,3).sum
  end
  
  # This method generates values for the secondary attributes based on the primary attributes.
  def calc_secondary_attributes
      self.san = self.pow * 5
      self.idea = self.int * 5
      self.health = ((self.siz+self.con)/2.0).ceil
      self.luck = self.pow * 5
      self.know = self.edu * 5    
      self.magic = self.pow
  end  
end

