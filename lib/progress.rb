require 'progress/version'
require 'progress/tracker'

module Progress

  def self.init(total)
    Tracker.new(total: total, current: 0, yield_interval: 10, yield_block: lambda{|result| puts result})
  end

end
