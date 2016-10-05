class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
      hours = @seconds / 3600
      remainder = @seconds % 3600
      minutes = remainder / 60
      seconds = remainder % 60
      padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
  end

  def padded(time)
    if time.to_s.size == 1
      "0" + time.to_s
    elsif time.to_s.size == 2
        time.to_s
    end
  end

end
