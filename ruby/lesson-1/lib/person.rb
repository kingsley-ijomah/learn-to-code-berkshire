class Person
  attr_reader :firstname, :lastname, :dob

  def initialize(firstname, lastname, dob)
    @firstname = firstname
    @lastname = lastname
    @dob = dob
  end

  def age
    if today >= dob.day and this_month >= dob.month and this_year >= dob.year
      this_year - dob.year
    elsif this_year >= dob.year and this_month >= dob.month
      this_year - dob.year
    else
      (this_year - dob.year) - 1
    end
  end

  def today
    Time.now.day
  end

  def this_month
    Time.now.month
  end

  def this_year
    Time.now.year
  end
end

person = Person.new('kingsley', 'ijomah', Time.new(1982, 9, 29))
person.age # => 34
