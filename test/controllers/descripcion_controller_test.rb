require 'test_helper'

class DescripcionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get descripcion_index_url
    assert_response :success
  end

end
