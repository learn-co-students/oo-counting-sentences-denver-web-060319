require 'pry'

class String
  
  def sentence?
    self.split(//).last == "."
  end
  
  def question?
    self.split(//).last == "?"
  end

  def exclamation?
    self.split(//).last == "!"
  end

  def count_sentences 
    self.split(/[.!?]/).delete_if { |string| string == "" }.count   
  end

end





























# require 'pry'

# class String

#   def sentence?
#     self ? end_with?(".") : false
#   end

#   def question?
#     self ? end_with?("?") : false
#   end

#   def exclamation?
#     self ? end_with?("!") : false
#   end

#   def count_sentences
#     self.split(/[.!?]/).count 
#     #self.split(/[.!?]/).reject!(&:empty?).count
#   end
# end

# "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
