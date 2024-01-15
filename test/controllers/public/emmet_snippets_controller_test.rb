require "test_helper"

class Public::EmmetSnippetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_emmet_snippets_index_url
    assert_response :success
  end

  test "should get show" do
    get public_emmet_snippets_show_url
    assert_response :success
  end
end
