require 'command_line_reporter'

class Benchmark
  include CommandLineReporter

  RANGE = [100, 1_000, 5_000, 10_000]

  attr_reader :range

  def initialize(range)
    @range = range
    @reporters = []
  end

  def self.measure(range = RANGE)
    benchmark = Benchmark.new(range)
    yield benchmark
    benchmark.start
  end

  def report(label, &block)
    @reporters << { label: label, block: block }
  end

  def start
    label_width = @reporters.map { |r| r[:label].size }.max

    table(border: true) do
      row(header: true) do
        column('', width: label_width + 3)

        @range.each do |n|
          column(n, width: 12)
        end
      end

      @reporters.each do |reporter|
        row do
          column(reporter[:label])

          @range.each do |n|
            start = Time.now
            reporter[:block].call(n)
            column(Time.now - start)
          end
        end
      end
    end
  end
end
