require "test_helper"

class UserTest < ActiveSupport::TestCase

  setup do
    @user = users(:one)
  end

  def user
    @user ||= User.new
  end

  def test_valid
    assert user.valid?
  end

end
