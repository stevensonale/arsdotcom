require 'test_helper'

class DancesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dance" do
    assert_difference('Dance.count') do
      post :create, :dance => { }
    end

    assert_redirected_to dance_path(assigns(:dance))
  end

  test "should show dance" do
    get :show, :id => dances(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dances(:one).to_param
    assert_response :success
  end

  test "should update dance" do
    put :update, :id => dances(:one).to_param, :dance => { }
    assert_redirected_to dance_path(assigns(:dance))
  end

  test "should destroy dance" do
    assert_difference('Dance.count', -1) do
      delete :destroy, :id => dances(:one).to_param
    end

    assert_redirected_to dances_path
  end
end
