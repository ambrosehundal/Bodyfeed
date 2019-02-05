require "application_system_test_case"

class ExpiredFoodsTest < ApplicationSystemTestCase
  setup do
    @expired_food = expired_foods(:one)
  end

  test "visiting the index" do
    visit expired_foods_url
    assert_selector "h1", text: "Expired Foods"
  end

  test "creating a Expired food" do
    visit expired_foods_url
    click_on "New Expired Food"

    fill_in "Email", with: @expired_food.email
    fill_in "Name", with: @expired_food.name
    click_on "Create Expired food"

    assert_text "Expired food was successfully created"
    click_on "Back"
  end

  test "updating a Expired food" do
    visit expired_foods_url
    click_on "Edit", match: :first

    fill_in "Email", with: @expired_food.email
    fill_in "Name", with: @expired_food.name
    click_on "Update Expired food"

    assert_text "Expired food was successfully updated"
    click_on "Back"
  end

  test "destroying a Expired food" do
    visit expired_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expired food was successfully destroyed"
  end
end
