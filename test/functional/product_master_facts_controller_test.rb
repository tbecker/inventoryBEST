require 'test_helper'

class ProductMasterFactsControllerTest < ActionController::TestCase
  setup do
    @product_master_fact = product_master_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_master_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_master_fact" do
    assert_difference('ProductMasterFact.count') do
      post :create, :product_master_fact => @product_master_fact.attributes
    end

    assert_redirected_to product_master_fact_path(assigns(:product_master_fact))
  end

  test "should show product_master_fact" do
    get :show, :id => @product_master_fact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_master_fact.to_param
    assert_response :success
  end

  test "should update product_master_fact" do
    put :update, :id => @product_master_fact.to_param, :product_master_fact => @product_master_fact.attributes
    assert_redirected_to product_master_fact_path(assigns(:product_master_fact))
  end

  test "should destroy product_master_fact" do
    assert_difference('ProductMasterFact.count', -1) do
      delete :destroy, :id => @product_master_fact.to_param
    end

    assert_redirected_to product_master_facts_path
  end
end
