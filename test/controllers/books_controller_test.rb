require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get AddBook" do
    get books_AddBook_url
    assert_response :success
  end

  test "should get UpdateBook" do
    get books_UpdateBook_url
    assert_response :success
  end

  test "should get ShowDetails" do
    get books_ShowDetails_url
    assert_response :success
  end

  test "should get DeleteBook" do
    get books_DeleteBook_url
    assert_response :success
  end
end
