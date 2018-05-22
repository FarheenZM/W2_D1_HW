require ("minitest/autorun")
require ("minitest/rg")

require_relative("../student")

class TestStudent < MiniTest::Test

  def test_student_name
    student = CodeclanStudent.new("Farheen", 6)
    assert_equal("Farheen", student.student_name)
  end
  def test_student_cohort
    student = CodeclanStudent.new("Farheen", 6)
    assert_equal(6, student.student_cohort)
  end

  def test_set_student_name
    student = CodeclanStudent.new("Farheen", 6)
    student.set_student_name("Farheen Mulla")
    assert_equal("Farheen Mulla", student.student_name)
  end
  def test_set_student_cohort
    student = CodeclanStudent.new("Farheen", 6)
    student.set_student_cohort(7)
    assert_equal(7, student.student_cohort)
  end

  def test_get_student_to_talk
    student = CodeclanStudent.new("Farheen", 6)
    #student.get_student_to_talk()
    assert_equal("I can talk!", student.get_student_to_talk)
  end

  def test_student_favourite_language
    student = CodeclanStudent.new("Farheen", 6)
    assert_equal("I love Ruby",student.student_favourite_language("Ruby"))
  end

end
