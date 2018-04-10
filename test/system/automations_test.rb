require "application_system_test_case"

class AutomationsTest < ApplicationSystemTestCase
  setup do
    @automation = automations(:one)
  end

  test "visiting the index" do
    visit automations_url
    assert_selector "h1", text: "Automations"
  end

  test "creating a Automation" do
    visit automations_url
    click_on "New Automation"

    fill_in "Action Crud", with: @automation.action_crud
    fill_in "Action Model", with: @automation.action_model
    fill_in "Action Table", with: @automation.action_table
    fill_in "Action Value", with: @automation.action_value
    fill_in "Rule Integer", with: @automation.rule_integer
    fill_in "Rule Value", with: @automation.rule_value
    fill_in "Trigger Crud", with: @automation.trigger_crud
    fill_in "Trigger Math", with: @automation.trigger_math
    fill_in "Trigger Model", with: @automation.trigger_model
    click_on "Create Automation"

    assert_text "Automation was successfully created"
    click_on "Back"
  end

  test "updating a Automation" do
    visit automations_url
    click_on "Edit", match: :first

    fill_in "Action Crud", with: @automation.action_crud
    fill_in "Action Model", with: @automation.action_model
    fill_in "Action Table", with: @automation.action_table
    fill_in "Action Value", with: @automation.action_value
    fill_in "Rule Integer", with: @automation.rule_integer
    fill_in "Rule Value", with: @automation.rule_value
    fill_in "Trigger Crud", with: @automation.trigger_crud
    fill_in "Trigger Math", with: @automation.trigger_math
    fill_in "Trigger Model", with: @automation.trigger_model
    click_on "Update Automation"

    assert_text "Automation was successfully updated"
    click_on "Back"
  end

  test "destroying a Automation" do
    visit automations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Automation was successfully destroyed"
  end
end
