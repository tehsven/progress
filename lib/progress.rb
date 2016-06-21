require 'progress/version'
require 'progress/tracker'

module Progress

  def self.to(total, interval: 10, block: lambda{|result| puts result})
    Tracker.new(total: total, current: 0, yield_interval: interval, yield_block: block)
  end

end
