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
#
# View more about at link:README.rdoc
#
#/folder1/investigator.rb
#
class Investigator
  #Those are the Attributes of the Investigator
  attr_accessor :name, :sex, :occupation, :str, :dex, :int, :con, :app, :pow, :siz, :san, :edu, :idea, :luck, :know, :health, :magic
  
  # Print the Primary Attributes showing their values.
  def print_primary_attributes
    "Strenght(STR):#{str}, Dexterity(DEX):#{dex}, Inteligence(INT):#{int}, Constitution(CON):#{con}, Appearence(APP):#{app}, Power(POW):#{pow}, Size:#{siz}, Education:#{edu}"
  end
  
  # Print the Secondary Attributes to show their values.
  def print_secondary_attributes
    "Sanity:#{san}, Health:#{health}, Luck:, Know: Magic:, "
  end
  
  # Print the basic information about the character
  def print_basic_info
    "Name:#{name}, Occupation:#{occupation}, Sex:#{sex}"
  end
  
end