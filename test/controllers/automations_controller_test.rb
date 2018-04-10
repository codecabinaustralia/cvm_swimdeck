require 'test_helper'

class AutomationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automation = automations(:one)
  end

  test "should get index" do
    get automations_url
    assert_response :success
  end

  test "should get new" do
    get new_automation_url
    assert_response :success
  end

  test "should create automation" do
    assert_difference('Automation.count') do
      post automations_url, params: { automation: { action_crud: @automation.action_crud, action_model: @automation.action_model, action_table: @automation.action_table, action_value: @automation.action_value, rule_integer: @automation.rule_integer, rule_value: @automation.rule_value, trigger_crud: @automation.trigger_crud, trigger_math: @automation.trigger_math, trigger_model: @automation.trigger_model } }
    end

    assert_redirected_to automation_url(Automation.last)
  end

  test "should show automation" do
    get automation_url(@automation)
    assert_response :success
  end

  test "should get edit" do
    get edit_automation_url(@automation)
    assert_response :success
  end

  test "should update automation" do
    patch automation_url(@automation), params: { automation: { action_crud: @automation.action_crud, action_model: @automation.action_model, action_table: @automation.action_table, action_value: @automation.action_value, rule_integer: @automation.rule_integer, rule_value: @automation.rule_value, trigger_crud: @automation.trigger_crud, trigger_math: @automation.trigger_math, trigger_model: @automation.trigger_model } }
    assert_redirected_to automation_url(@automation)
  end

  test "should destroy automation" do
    assert_difference('Automation.count', -1) do
      delete automation_url(@automation)
    end

    assert_redirected_to automations_url
  end
end
