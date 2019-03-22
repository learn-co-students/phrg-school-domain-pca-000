# code here!
class School
attr_accessor :roster, :name
  def initialize(name)
    @name =name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(student)
    roster[student]
  end

  def sort
    new_hash = {}
    roster.each do |grade, student|
      new_hash[grade] = student.sort
    end
    new_hash
  end

  end

# school = School.new("Bayside High School")
