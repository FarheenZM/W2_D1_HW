class CodeclanStudent

  def initialize(input_name, input_cohort)
    @student_name = input_name
    @cohort = input_cohort
  end

  # getters
  def student_name()
    return @student_name
  end

  def student_cohort()
    return @cohort
  end

  # setters
  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def get_student_to_talk
    return "I can talk!"
  end
  
  def student_favourite_language(fav_lang)
    # fav_lang = gets.chomp()
    return "I love #{fav_lang}"
  end

end
