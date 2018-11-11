require 'minitest/autorun'
require 'minitest/benchmark'

require File.expand_path('../support/factory', __FILE__)

class Minitest::Spec
  include Factory

  def with_array(n)
    yield array(n)
  end
end

class Minitest::Benchmark
  include Factory
end
