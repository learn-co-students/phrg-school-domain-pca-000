require 'pry'

class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @student = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, names|
      sorted_roster[grade] = names.sort
    end
    sorted_roster
  end
end
