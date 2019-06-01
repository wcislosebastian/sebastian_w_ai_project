require "application_system_test_case"

class ParentsTest < ApplicationSystemTestCase
  setup do
    @parent = parents(:one)
  end

  test "visiting the index" do
    visit parents_url
    assert_selector "h1", text: "Parents"
  end

  test "creating a Parent" do
    visit parents_url
    click_on "New Parent"

    fill_in "Address", with: @parent.address
    fill_in "City", with: @parent.city
    fill_in "First name", with: @parent.first_name
    fill_in "Last name", with: @parent.last_name
    click_on "Create Parent"

    assert_text "Parent was successfully created"
    click_on "Back"
  end

  test "updating a Parent" do
    visit parents_url
    click_on "Edit", match: :first

    fill_in "Address", with: @parent.address
    fill_in "City", with: @parent.city
    fill_in "First name", with: @parent.first_name
    fill_in "Last name", with: @parent.last_name
    click_on "Update Parent"

    assert_text "Parent was successfully updated"
    click_on "Back"
  end

  test "destroying a Parent" do
    visit parents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parent was successfully destroyed"
  end
end
