require 'test_helper'

class RealClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @real_class = real_classes(:one)
  end

  test "should get index" do
    get real_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_real_class_url
    assert_response :success
  end

  test "should create real_class" do
    assert_difference('RealClass.count') do
      post real_classes_url, params: { real_class: { active: @real_class.active, end_date: @real_class.end_date, name: @real_class.name, semester: @real_class.semester, start_date: @real_class.start_date, year: @real_class.year } }
    end

    assert_redirected_to real_class_url(RealClass.last)
  end

  test "should show real_class" do
    get real_class_url(@real_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_real_class_url(@real_class)
    assert_response :success
  end

  test "should update real_class" do
    patch real_class_url(@real_class), params: { real_class: { active: @real_class.active, end_date: @real_class.end_date, name: @real_class.name, semester: @real_class.semester, start_date: @real_class.start_date, year: @real_class.year } }
    assert_redirected_to real_class_url(@real_class)
  end

  test "should destroy real_class" do
    assert_difference('RealClass.count', -1) do
      delete real_class_url(@real_class)
    end

    assert_redirected_to real_classes_url
  end
end
