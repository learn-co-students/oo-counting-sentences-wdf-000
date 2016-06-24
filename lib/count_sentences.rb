require 'pry'

class String

  def sentence?
    self.match(/\.$/) ? true : false
  end

  def question?
    self.match(/\?$/) ? true : false
  end

  def exclamation?
    self.match(/\!$/) ? true : false
  end

  def count_sentences
    arr = self.split(" ")

    result = 0
    arr.each do |word|
      result += 1 if word.sentence? || word.question? || word.exclamation?
    end
    result
  end
end
