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
    self.split(" ").each do |word|
      
      index = 0
      word.split("").each do |letter|
        
        if letter == "." || letter  == "?" || letter == "!"
          index += 1
        end

      end
      if index > 1
        index = 1
      end
      count += index
      
    end
    count

  end
end