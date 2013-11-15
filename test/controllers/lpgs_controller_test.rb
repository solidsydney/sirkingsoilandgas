require 'test_helper'

class LpgsControllerTest < ActionController::TestCase
  setup do
    @lpg = lpgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lpgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lpg" do
    assert_difference('Lpg.count') do
      post :create, lpg: { city: @lpg.city, description: @lpg.description, email: @lpg.email, full_name: @lpg.full_name, lga: @lpg.lga, state: @lpg.state, username: @lpg.username }
    end

    assert_redirected_to lpg_path(assigns(:lpg))
  end

  test "should show lpg" do
    get :show, id: @lpg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lpg
    assert_response :success
  end

  test "should update lpg" do
    patch :update, id: @lpg, lpg: { city: @lpg.city, description: @lpg.description, email: @lpg.email, full_name: @lpg.full_name, lga: @lpg.lga, state: @lpg.state, username: @lpg.username }
    assert_redirected_to lpg_path(assigns(:lpg))
  end

  test "should destroy lpg" do
    assert_difference('Lpg.count', -1) do
      delete :destroy, id: @lpg
    end

    assert_redirected_to lpgs_path
  end
end
