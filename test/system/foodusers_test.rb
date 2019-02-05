require "application_system_test_case"

class FoodusersTest < ApplicationSystemTestCase
  setup do
    @fooduser = foodusers(:one)
  end

  test "visiting the index" do
    visit foodusers_url
    assert_selector "h1", text: "Foodusers"
  end

  test "creating a Fooduser" do
    visit foodusers_url
    click_on "New Fooduser"

    fill_in "Email", with: @fooduser.email
    fill_in "Login", with: @fooduser.login
    fill_in "Name", with: @fooduser.name
    click_on "Create Fooduser"

    assert_text "Fooduser was successfully created"
    click_on "Back"
  end

  test "updating a Fooduser" do
    visit foodusers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @fooduser.email
    fill_in "Login", with: @fooduser.login
    fill_in "Name", with: @fooduser.name
    click_on "Update Fooduser"

    assert_text "Fooduser was successfully updated"
    click_on "Back"
  end

  test "destroying a Fooduser" do
    visit foodusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fooduser was successfully destroyed"
  end
end
