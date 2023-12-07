require "application_system_test_case"

class UserInterestsTest < ApplicationSystemTestCase
  setup do
    @user_interest = user_interests(:one)
  end

  test "visiting the index" do
    visit user_interests_url
    assert_selector "h1", text: "User interests"
  end

  test "should create user interest" do
    visit user_interests_url
    click_on "New user interest"

    click_on "Create User interest"

    assert_text "User interest was successfully created"
    click_on "Back"
  end

  test "should update User interest" do
    visit user_interest_url(@user_interest)
    click_on "Edit this user interest", match: :first

    click_on "Update User interest"

    assert_text "User interest was successfully updated"
    click_on "Back"
  end

  test "should destroy User interest" do
    visit user_interest_url(@user_interest)
    click_on "Destroy this user interest", match: :first

    assert_text "User interest was successfully destroyed"
  end
end
