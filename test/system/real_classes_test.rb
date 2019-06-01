require "application_system_test_case"

class RealClassesTest < ApplicationSystemTestCase
  setup do
    @real_class = real_classes(:one)
  end

  test "visiting the index" do
    visit real_classes_url
    assert_selector "h1", text: "Real Classes"
  end

  test "creating a Real class" do
    visit real_classes_url
    click_on "New Real Class"

    check "Active" if @real_class.active
    fill_in "End date", with: @real_class.end_date
    fill_in "Name", with: @real_class.name
    fill_in "Semester", with: @real_class.semester
    fill_in "Start date", with: @real_class.start_date
    fill_in "Year", with: @real_class.year
    click_on "Create Real class"

    assert_text "Real class was successfully created"
    click_on "Back"
  end

  test "updating a Real class" do
    visit real_classes_url
    click_on "Edit", match: :first

    check "Active" if @real_class.active
    fill_in "End date", with: @real_class.end_date
    fill_in "Name", with: @real_class.name
    fill_in "Semester", with: @real_class.semester
    fill_in "Start date", with: @real_class.start_date
    fill_in "Year", with: @real_class.year
    click_on "Update Real class"

    assert_text "Real class was successfully updated"
    click_on "Back"
  end

  test "destroying a Real class" do
    visit real_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Real class was successfully destroyed"
  end
end
