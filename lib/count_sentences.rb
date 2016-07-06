require 'pry'

class String

  def sentence?
    self.split("").last == "."
  end

  def question?
    self.split("").last == "?"
  end

  def exclamation?
    self.split("").last == "!"
  end

  def count_sentences
    a = self.scan(/\.\z/) + self.scan(/\!\z/) + self.scan(/\?\z/)
    a.count

    x = self.split(" ").map {|elm| elm.scan(/\.\z/) }.flatten.count
    y = self.split(" ").map {|elm| elm.scan(/\!\z/) }.flatten.count
    z = self.split(" ").map {|elm| elm.scan(/\?\z/) }.flatten.count

    return x+y+z
  end
end
