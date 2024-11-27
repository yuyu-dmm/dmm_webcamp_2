require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get homes_new_url
    assert_response :success
  end

  test "should get top" do
    get homes_top_url
    assert_response :success
  end

  test "should get books" do
    get homes_books_url
    assert_response :success
  end

  test "should get show" do
    get homes_show_url
    assert_response :success
  end

  test "should get edit" do
    get homes_edit_url
    assert_response :success
  end
end
