require "application_system_test_case"

class SusciptionsTest < ApplicationSystemTestCase
  setup do
    @susciption = susciptions(:one)
  end

  test "visiting the index" do
    visit susciptions_url
    assert_selector "h1", text: "Susciptions"
  end

  test "should create susciption" do
    visit susciptions_url
    click_on "New susciption"

    fill_in "Email", with: @susciption.email
    check "Ischildren" if @susciption.isChildren
    check "Ismen" if @susciption.isMen
    check "Iswomen" if @susciption.isWomen
    click_on "Create Susciption"

    assert_text "Susciption was successfully created"
    click_on "Back"
  end

  test "should update Susciption" do
    visit susciption_url(@susciption)
    click_on "Edit this susciption", match: :first

    fill_in "Email", with: @susciption.email
    check "Ischildren" if @susciption.isChildren
    check "Ismen" if @susciption.isMen
    check "Iswomen" if @susciption.isWomen
    click_on "Update Susciption"

    assert_text "Susciption was successfully updated"
    click_on "Back"
  end

  test "should destroy Susciption" do
    visit susciption_url(@susciption)
    click_on "Destroy this susciption", match: :first

    assert_text "Susciption was successfully destroyed"
  end
end
