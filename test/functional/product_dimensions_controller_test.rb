require 'test_helper'

class ProductDimensionsControllerTest < ActionController::TestCase
  setup do
    @product_dimension = product_dimensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_dimensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_dimension" do
    assert_difference('ProductDimension.count') do
      post :create, :product_dimension => @product_dimension.attributes
    end

    assert_redirected_to product_dimension_path(assigns(:product_dimension))
  end

  test "should show product_dimension" do
    get :show, :id => @product_dimension.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_dimension.to_param
    assert_response :success
  end

  test "should update product_dimension" do
    put :update, :id => @product_dimension.to_param, :product_dimension => @product_dimension.attributes
    assert_redirected_to product_dimension_path(assigns(:product_dimension))
  end

  test "should destroy product_dimension" do
    assert_difference('ProductDimension.count', -1) do
      delete :destroy, :id => @product_dimension.to_param
    end

    assert_redirected_to product_dimensions_path
  end
end
