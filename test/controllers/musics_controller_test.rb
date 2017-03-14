require 'test_helper'

class MusicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get musics_index_url
    assert_response :success
  end

  test "should get new" do
    get musics_new_url
    assert_response :success
  end

  test "should get edit" do
    get musics_edit_url
    assert_response :success
  end

  test "should get show" do
    get musics_show_url
    assert_response :success
  end

end
