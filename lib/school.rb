class School

  attr_accessor :roster, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if !@roster.keys.include? grade
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    array = @roster.keys.sort
    hash = {}
    array.each do |grade|
      hash[grade] = @roster[grade].sort
    end
    return hash
  end

end
