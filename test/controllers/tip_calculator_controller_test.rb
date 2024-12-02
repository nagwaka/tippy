require "test_helper"

class TipCalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tip_calculator_index_url
    assert_response :success
  end
end
