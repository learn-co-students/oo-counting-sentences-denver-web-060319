require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question? 
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sen=self.split(/\.|\?|\!/)
    sen=sen.delete_if {|word| word.size<2}
    return sen.size
  end
end