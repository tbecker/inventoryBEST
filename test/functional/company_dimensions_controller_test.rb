require 'test_helper'

class CompanyDimensionsControllerTest < ActionController::TestCase
  setup do
    @company_dimension = company_dimensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_dimensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_dimension" do
    assert_difference('CompanyDimension.count') do
      post :create, :company_dimension => @company_dimension.attributes
    end

    assert_redirected_to company_dimension_path(assigns(:company_dimension))
  end

  test "should show company_dimension" do
    get :show, :id => @company_dimension.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @company_dimension.to_param
    assert_response :success
  end

  test "should update company_dimension" do
    put :update, :id => @company_dimension.to_param, :company_dimension => @company_dimension.attributes
    assert_redirected_to company_dimension_path(assigns(:company_dimension))
  end

  test "should destroy company_dimension" do
    assert_difference('CompanyDimension.count', -1) do
      delete :destroy, :id => @company_dimension.to_param
    end

    assert_redirected_to company_dimensions_path
  end
end
