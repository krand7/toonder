require "test_helper"

class StaticControllerTest < ActionController::TestCase

  setup do
    @regular_user = users(:one)
  end

  def test_home
    get :home
    assert_response :success
  end

  def test_dashboard
    login(@regular_user)
    get :dashboard
    assert_response :success
  end

end
