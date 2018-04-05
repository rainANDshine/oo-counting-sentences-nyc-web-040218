require 'pry'

class String

  def sentence?
    self.end_with?(".") == true
  end

  def question?
    self.end_with?("?") == true
  end

  def exclamation?
    self.end_with?("!") == true
  end

  def count_sentences
    arr = self.split(" ")
    count = 0
    arr.each do |element|
      count += 1 if element.end_with?(".") || element.end_with?("?") || element.end_with?("!")
    end
    count
  end
end
