class School

  def initialize(student)
    @student = student
    @roster = {}
  end

   def roster
    @roster
  end

   def add_student(student, grade)
    if @roster[grade] != nil
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

   def grade(grade)
    @roster[grade]
  end

   def sort
    @roster.each do |grade, student|
      student.sort!
    end
  end

end
