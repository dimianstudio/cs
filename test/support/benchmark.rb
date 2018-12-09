require 'command_line_reporter'
require 'progress_bar'

class Benchmark
  include CommandLineReporter

  RANGE = [100, 1_000, 5_000, 10_000]

  attr_reader :range

  def initialize(range)
    @range = range
    @samples_factory = nil
    @reporters = []
  end

  def self.measure(range = RANGE)
    benchmark = Benchmark.new(range)
    yield benchmark
    benchmark.start
  end

  def samples_factory(&block)
    @samples_factory = block
  end

  def report(label, &block)
    @reporters << { label: label, block: block }
  end

  def start
    raise ArgumentError, 'x.samples_factory if not defined' unless @samples_factory

    progress_bar = ProgressBar.new(@reporters.size * @range.size)

    samples = {}

    @range.each do |n|
      samples[n] = @samples_factory.call(n)
    end

    results = []

    @reporters.each do |reporter|
      result = [reporter[:label]]

      @range.each do |n|
        sample = samples[n].dup
        start = Time.now
        reporter[:block].call(sample)
        result << Time.now - start
        progress_bar.increment!
      end

      results << result
    end

    puts

    print_results(results)
  end

  private

  def print_results(results)
    label_width = @reporters.map { |r| r[:label].size }.max

    table(border: true) do
      row(header: true) do
        column('', width: label_width + 3)
        @range.each { |n| column(n, width: 12) }
      end

      results.sort_by(&:last).each do |result|
        row do
          column(result.shift)
          result.each { |value| column(value) }
        end
      end
    end
  end
end
