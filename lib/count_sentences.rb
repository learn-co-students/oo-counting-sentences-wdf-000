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
    # c=0
    # self.split(".").each { |x| c+=1  }
    # c
    self.split(/[\.\!\?]\s/).length
  end
end
