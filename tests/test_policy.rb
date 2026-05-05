require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = HarborParseDslStack::Signal.new(demand: 63, capacity: 73, latency: 15, risk: 5, weight: 11)
    assert_equal 174, HarborParseDslStack.score(signal_case_1)
    assert_equal 'accept', HarborParseDslStack.classify(signal_case_1)
    signal_case_2 = HarborParseDslStack::Signal.new(demand: 85, capacity: 70, latency: 10, risk: 5, weight: 6)
    assert_equal 210, HarborParseDslStack.score(signal_case_2)
    assert_equal 'accept', HarborParseDslStack.classify(signal_case_2)
    signal_case_3 = HarborParseDslStack::Signal.new(demand: 67, capacity: 106, latency: 10, risk: 12, weight: 11)
    assert_equal 207, HarborParseDslStack.score(signal_case_3)
    assert_equal 'accept', HarborParseDslStack.classify(signal_case_3)
  end
end
