require "test_helper"

class ClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get economy" do
    get classes_economy_url
    assert_response :success
  end

  test "should get business" do
    get classes_business_url
    assert_response :success
  end

  test "should get first_class" do
    get classes_first_class_url
    assert_response :success
  end
end
