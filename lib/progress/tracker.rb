module Progress
  class Tracker

  attr_reader :total, :yield_interval, :yield_block, :current, :start_time, :end_time

    def initialize(total:, current: 0, yield_interval:, yield_block:)
      @total = total
      @current = current
      @yield_interval = yield_interval
      @yield_block = yield_block
    end

    def increment
      update(1)
    end

    def update(delta)
      @start_time ||= Time.now
      @current += delta
      yield_block.call(results) if should_yield
    end

    def should_yield
      current % yield_interval == 0
    end

    def results
      {
        current: current,
        total: total,
        percent_complete: percent_complete,
        ops_per_sec: ops_per_sec,
        eta: eta
      }
    end

    def percent_complete
      100 * (current.to_f/total.to_f)
    end

    def ops_per_sec
      current / (Time.now - start_time)
    end

    def eta
      remaining = total - current
      if remaining <= 0
        @end_time ||= Time.now
        end_time
      else
        Time.at(Time.now + (ops_per_sec / remaining))
      end
    end

  end
end
