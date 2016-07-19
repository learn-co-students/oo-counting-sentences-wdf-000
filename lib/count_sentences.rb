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
    array = self.split(/(?<=[.?!])/)
    # ^splits the string based on the punctuation, 
    # while keeping the punctuation attached: ?<= --> positive look behind RegEx
    # if a single punctuation is returned, delete it from the array
    # because it means that it was attached to the previous sentence
    array.delete_if do |element|
      element.size == 1
    end
    array.size
  end

end

