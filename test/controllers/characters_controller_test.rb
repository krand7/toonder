require "test_helper"

class CharactersControllerTest < ActionController::TestCase

  setup do
    @character = characters(:one)
    @user = users(:admin)
  end

  def character
    @character ||= characters :one
  end

  def test_index
    login(@user)
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  def test_new
    login(@user)
    get :new
    assert_response :success
  end

  def test_create
    login(@user)
    assert_difference('Character.count') do
      post :create, character: { name: 'New character', description: 'I am new', user_id: '1' }
    end

    assert_redirected_to dashboard_path
  end

  def test_show
    login(@user)
    get :show, id: character
    assert_response :success
  end

  def test_edit
    login(@user)
    get :edit, id: character
    assert_response :success
  end

  def test_update
    login(@user)
    put :update, id: character, character: { name: 'Reptar2' }
    assert_redirected_to character_path(assigns(:character))
  end

  def test_destroy
    login(@user)
    assert_difference('Character.count', 0) do
      delete :destroy, id: character
    end

    assert_redirected_to characters_path
  end
end
