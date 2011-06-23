require 'test_helper'

class WarehouseDimensionsControllerTest < ActionController::TestCase
  setup do
    @warehouse_dimension = warehouse_dimensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warehouse_dimensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create warehouse_dimension" do
    assert_difference('WarehouseDimension.count') do
      post :create, :warehouse_dimension => @warehouse_dimension.attributes
    end

    assert_redirected_to warehouse_dimension_path(assigns(:warehouse_dimension))
  end

  test "should show warehouse_dimension" do
    get :show, :id => @warehouse_dimension.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @warehouse_dimension.to_param
    assert_response :success
  end

  test "should update warehouse_dimension" do
    put :update, :id => @warehouse_dimension.to_param, :warehouse_dimension => @warehouse_dimension.attributes
    assert_redirected_to warehouse_dimension_path(assigns(:warehouse_dimension))
  end

  test "should destroy warehouse_dimension" do
    assert_difference('WarehouseDimension.count', -1) do
      delete :destroy, :id => @warehouse_dimension.to_param
    end

    assert_redirected_to warehouse_dimensions_path
  end
end
