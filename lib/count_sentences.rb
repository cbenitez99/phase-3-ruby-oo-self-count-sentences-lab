require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.include?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).filter {|words| !words.empty?}.size
    # binding.pry
  end
end