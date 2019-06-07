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
    count = 0
    self.split(" ").reduce(0) do |sum, str|
      if str.sentence? || str.question? || str.exclamation?
        sum + 1
      else
        sum
      end
    end
  end
end