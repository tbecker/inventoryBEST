require 'test_helper'

class InventoryFactsControllerTest < ActionController::TestCase
  setup do
    @inventory_fact = inventory_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_fact" do
    assert_difference('InventoryFact.count') do
      post :create, :inventory_fact => @inventory_fact.attributes
    end

    assert_redirected_to inventory_fact_path(assigns(:inventory_fact))
  end

  test "should show inventory_fact" do
    get :show, :id => @inventory_fact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inventory_fact.to_param
    assert_response :success
  end

  test "should update inventory_fact" do
    put :update, :id => @inventory_fact.to_param, :inventory_fact => @inventory_fact.attributes
    assert_redirected_to inventory_fact_path(assigns(:inventory_fact))
  end

  test "should destroy inventory_fact" do
    assert_difference('InventoryFact.count', -1) do
      delete :destroy, :id => @inventory_fact.to_param
    end

    assert_redirected_to inventory_facts_path
  end
end
