require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = HarborParseDslStack::DomainReview.new(signal: 58, slack: 46, drag: 9, confidence: 80)
    assert_equal 215, HarborParseDslStack.domain_review_score(item)
    assert_equal "ship", HarborParseDslStack.domain_review_lane(item)
  end
end
