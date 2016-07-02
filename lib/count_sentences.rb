require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    sym = [".", "?", "!"]
    self.split(" ").count { |s| sym.include?(s[-1]) }
  end
end
