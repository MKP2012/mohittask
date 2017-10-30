require 'test_helper'

class WelHomesControllerTest < ActionController::TestCase
  setup do
    @wel_home = wel_homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wel_homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wel_home" do
    assert_difference('WelHome.count') do
      post :create, wel_home: {  }
    end

    assert_redirected_to wel_home_path(assigns(:wel_home))
  end

  test "should show wel_home" do
    get :show, id: @wel_home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wel_home
    assert_response :success
  end

  test "should update wel_home" do
    patch :update, id: @wel_home, wel_home: {  }
    assert_redirected_to wel_home_path(assigns(:wel_home))
  end

  test "should destroy wel_home" do
    assert_difference('WelHome.count', -1) do
      delete :destroy, id: @wel_home
    end

    assert_redirected_to wel_homes_path
  end
end
