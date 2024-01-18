require "test_helper"

class ColaboradorControllerTest < ActionDispatch::IntegrationTest
  test "should get colaborador_pg" do
    get colaborador_colaborador_pg_url
    assert_response :success
  end
end
