require 'test_helper'

class StyleguidesControllerTest < ActionDispatch::IntegrationTest
  test "should get styleguide" do
    get styleguides_styleguide_url
    assert_response :success
  end

end
