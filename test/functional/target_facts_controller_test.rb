require 'test_helper'

class TargetFactsControllerTest < ActionController::TestCase
  setup do
    @target_fact = target_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:target_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create target_fact" do
    assert_difference('TargetFact.count') do
      post :create, :target_fact => @target_fact.attributes
    end

    assert_redirected_to target_fact_path(assigns(:target_fact))
  end

  test "should show target_fact" do
    get :show, :id => @target_fact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @target_fact.to_param
    assert_response :success
  end

  test "should update target_fact" do
    put :update, :id => @target_fact.to_param, :target_fact => @target_fact.attributes
    assert_redirected_to target_fact_path(assigns(:target_fact))
  end

  test "should destroy target_fact" do
    assert_difference('TargetFact.count', -1) do
      delete :destroy, :id => @target_fact.to_param
    end

    assert_redirected_to target_facts_path
  end
end
