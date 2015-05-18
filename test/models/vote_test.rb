require "test_helper"

class VoteTest < ActiveSupport::TestCase

  setup do
    @vote = votes(:one)
  end

  def vote
    @vote ||= Vote.new
  end

  def test_valid
    assert vote.valid?
  end

end
