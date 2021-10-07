require 'date'
class User
  attr_reader :name, :day, :month
  
  def initialize(name, day, month)
    @name = name
    @day = day.to_i
    @month = month.to_i
  end

end



