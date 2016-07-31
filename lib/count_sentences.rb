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
    counter = 0
  	self.split(/\.|\?|\!/).each do |sentence|
      if sentence.length != 0
       counter += 1
      end
    end
    counter
  end

end