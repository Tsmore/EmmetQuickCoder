require "test_helper"

class Admin::EmmetSnippetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_emmet_snippets_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_emmet_snippets_show_url
    assert_response :success
  end
end
