require 'test_helper'

class ProductlinesControllerTest < ActionController::TestCase
  setup do
    @productline = productlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productline" do
    assert_difference('Productline.count') do
      post :create, productline: { name: @productline.name }
    end

    assert_redirected_to productline_path(assigns(:productline))
  end

  test "should show productline" do
    get :show, id: @productline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productline
    assert_response :success
  end

  test "should update productline" do
    put :update, id: @productline, productline: { name: @productline.name }
    assert_redirected_to productline_path(assigns(:productline))
  end

  test "should destroy productline" do
    assert_difference('Productline.count', -1) do
      delete :destroy, id: @productline
    end

    assert_redirected_to productlines_path
  end
end
