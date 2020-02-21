require 'test_helper'

class CharacterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get character_index_url
    assert_response :success
  end

  test "should get detail" do
    get character_detail_url
    assert_response :success
  end

end
