require "application_system_test_case"

class ClassTemplatesTest < ApplicationSystemTestCase
  setup do
    @class_template = class_templates(:one)
  end

  test "visiting the index" do
    visit class_templates_url
    assert_selector "h1", text: "Class Templates"
  end

  test "creating a Class template" do
    visit class_templates_url
    click_on "New Class Template"

    check "Archived" if @class_template.archived
    fill_in "Name", with: @class_template.name
    fill_in "Semester", with: @class_template.semester
    fill_in "Year", with: @class_template.year
    click_on "Create Class template"

    assert_text "Class template was successfully created"
    click_on "Back"
  end

  test "updating a Class template" do
    visit class_templates_url
    click_on "Edit", match: :first

    check "Archived" if @class_template.archived
    fill_in "Name", with: @class_template.name
    fill_in "Semester", with: @class_template.semester
    fill_in "Year", with: @class_template.year
    click_on "Update Class template"

    assert_text "Class template was successfully updated"
    click_on "Back"
  end

  test "destroying a Class template" do
    visit class_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class template was successfully destroyed"
  end
end
