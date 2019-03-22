class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster #attr_reader :roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] = (@roster[grade] << student_name)
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.collect do |grade, names|
      sorted_roster[grade] = names.sort
    end
    sorted_roster
  end
end
