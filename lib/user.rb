require 'date'
class User
  attr_reader :name, :day, :month, :calc_days
  
  def initialize(name, day, month)
    @name = name
    @day = day.to_i
    @month = month.to_i
  end

  def calc_days
    bday_today = false
    start_date = DateTime.now
    end_date = DateTime.new(2021, @month, @day)
    if start_date > end_date
      end_date = DateTime.new(2022, @month, @day)
    end
    @remaining_days = (start_date..end_date).count
  end
end



