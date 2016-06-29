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
	#ar = self.split(' ')
	#ar.count do | x |
	#	x.match(/[\.!?]/)
	#end
	self.split(' ').count { |x| x.match(/[\.!?]/) }
  end
end
