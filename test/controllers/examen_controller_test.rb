require "test_helper"

class ExamenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get examen_index_url
    assert_response :success
  end

  test "should get show" do
    get examen_show_url
    assert_response :success
  end
end
