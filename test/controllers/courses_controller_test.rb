require "test_helper"

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get hadoop" do
    get courses_hadoop_url
    assert_response :success
  end
end
