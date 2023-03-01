class BirdCount
 
  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-1]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    @birds_per_day.count { |count| count >= 5 }
  end

  def day_without_birds?
    @birds_per_day.include?(0)
  end
end



