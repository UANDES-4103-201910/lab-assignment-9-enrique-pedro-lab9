require 'test_helper'

class UserTicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_tickets_index_url
    assert_response :success
  end

  test "should get show" do
    get user_tickets_show_url
    assert_response :success
  end

  test "should get new" do
    get user_tickets_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_tickets_edit_url
    assert_response :success
  end

end
