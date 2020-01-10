# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, grades) #adding students to roster hash
    roster[grades] ||= []
    roster[grades] << student
  end 
  
  def grade(grades) #returning information in the roster hash
    roster.detect do |x, y| 
      if x == grades
        return y 
      end 
    end 
  end 
  def sort #sorting information in the roster hash
    hash = {}
    roster.each do |x, y| 
      hash[x] = y.sort 
    end 
    hash
end 
end