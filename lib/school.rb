# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, level)
    # this sort of means #=> a || a = b ... or #=> x || x = y
    # it's freak'n weird
    roster[level] ||= []
    roster[level] << student
  end 
  
  def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end 
  def sort 
    hash = {}
    roster.each do |x, y| 
      hash[x] = y.sort 
    end 
    hash
end 
end