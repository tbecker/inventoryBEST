require 'test_helper'

class DateDimensionsControllerTest < ActionController::TestCase
  setup do
    @date_dimension = date_dimensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:date_dimensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create date_dimension" do
    assert_difference('DateDimension.count') do
      post :create, :date_dimension => @date_dimension.attributes
    end

    assert_redirected_to date_dimension_path(assigns(:date_dimension))
  end

  test "should show date_dimension" do
    get :show, :id => @date_dimension.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @date_dimension.to_param
    assert_response :success
  end

  test "should update date_dimension" do
    put :update, :id => @date_dimension.to_param, :date_dimension => @date_dimension.attributes
    assert_redirected_to date_dimension_path(assigns(:date_dimension))
  end

  test "should destroy date_dimension" do
    assert_difference('DateDimension.count', -1) do
      delete :destroy, :id => @date_dimension.to_param
    end

    assert_redirected_to date_dimensions_path
  end
end
