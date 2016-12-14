require 'person' # ~> LoadError: cannot load such file -- person

RSpec.describe Person, '#age' do
  # birthday is 10-10-1982
  # today is 10-10-2016
  # age is 2016 - 1982 = 34
  #
  # today is 11-11-2016
  # age is 2016 - 1982 = 34
  #
  # today is 9-10-2016
  # age is (2016 - 1982) - 1
  #
  # today is 10-09-2016
  # age is (2016 - 1982) - 1
  #
  # if today's day, month and year is equal to or greater than birthday
  # -- this year take away birthday
  #
  # if today's day or month or year is less than birthday
  # -- this year take away birthday minus one
end
