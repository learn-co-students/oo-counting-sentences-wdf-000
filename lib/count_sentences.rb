require 'pry'

class String

  def sentence?
    self[-1] == "."    
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    puts self
    puts self.split(/[\.\?\!]/)
    self.split(/[\.\?\!]/).grep(/\w/).size
  end
end
