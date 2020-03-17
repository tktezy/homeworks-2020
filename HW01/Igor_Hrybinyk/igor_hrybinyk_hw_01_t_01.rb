#1. If you look at the clock and the time is 3:15, what is the angle between the hours and the minutes hands?

class AngleCounter
  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def hours_to_angles
    result = (hour_angle - minutes_angle).abs
    result - 360 if result >= 360
    puts result
  end

  private

  def hour_angle
    @hours -= 12 if @hours >= 12
    (@hours + hour_delta) * 30
  end

  def hour_delta
    @minutes.to_f / 60
  end

  def minutes_angle
    @minutes.to_f * 6
  end
end

AngleCounter.new(3, 15).hours_to_angles
AngleCounter.new(15, 15).hours_to_angles
AngleCounter.new(13, 0).hours_to_angles
AngleCounter.new(0, 0).hours_to_angles
