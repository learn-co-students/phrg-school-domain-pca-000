class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
    @favorite_color = "green"
  end

  def roster
    @roster
  end

  def add_student(student_name,grade)
    @roster [grade] ||= []
    @roster [grade] = (@roster[grade] << student_name)
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    #sorted_roster = {}
    roster.each do |grade, names|
    @roster[grade] = names.sort
    end
    #sorted roster
  end
end
