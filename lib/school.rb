# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, grades)
    roster[grades] ||= []
    roster[grades] << student
  end 
  
  def grade(grades)
    roster.detect do |x, y| 
      if x == grades
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