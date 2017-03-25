require 'test_helper'

class FactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facts_index_url
    assert_response :success
  end

  test "should get show" do
    get facts_show_url
    assert_response :success
  end

  test "should get edit" do
    get facts_edit_url
    assert_response :success
  end

  test "should get new" do
    get facts_new_url
    assert_response :success
  end

end
