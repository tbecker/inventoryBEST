require 'test_helper'

class InventoryTransactionFactsControllerTest < ActionController::TestCase
  setup do
    @inventory_transaction_fact = inventory_transaction_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_transaction_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_transaction_fact" do
    assert_difference('InventoryTransactionFact.count') do
      post :create, :inventory_transaction_fact => @inventory_transaction_fact.attributes
    end

    assert_redirected_to inventory_transaction_fact_path(assigns(:inventory_transaction_fact))
  end

  test "should show inventory_transaction_fact" do
    get :show, :id => @inventory_transaction_fact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inventory_transaction_fact.to_param
    assert_response :success
  end

  test "should update inventory_transaction_fact" do
    put :update, :id => @inventory_transaction_fact.to_param, :inventory_transaction_fact => @inventory_transaction_fact.attributes
    assert_redirected_to inventory_transaction_fact_path(assigns(:inventory_transaction_fact))
  end

  test "should destroy inventory_transaction_fact" do
    assert_difference('InventoryTransactionFact.count', -1) do
      delete :destroy, :id => @inventory_transaction_fact.to_param
    end

    assert_redirected_to inventory_transaction_facts_path
  end
end
