require 'test_helper'

class ClassTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_template = class_templates(:one)
  end

  test "should get index" do
    get class_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_class_template_url
    assert_response :success
  end

  test "should create class_template" do
    assert_difference('ClassTemplate.count') do
      post class_templates_url, params: { class_template: { archived: @class_template.archived, name: @class_template.name, semester: @class_template.semester, year: @class_template.year } }
    end

    assert_redirected_to class_template_url(ClassTemplate.last)
  end

  test "should show class_template" do
    get class_template_url(@class_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_template_url(@class_template)
    assert_response :success
  end

  test "should update class_template" do
    patch class_template_url(@class_template), params: { class_template: { archived: @class_template.archived, name: @class_template.name, semester: @class_template.semester, year: @class_template.year } }
    assert_redirected_to class_template_url(@class_template)
  end

  test "should destroy class_template" do
    assert_difference('ClassTemplate.count', -1) do
      delete class_template_url(@class_template)
    end

    assert_redirected_to class_templates_url
  end
end
