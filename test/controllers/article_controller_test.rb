require 'test_helper'

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get article_home_url
    assert_response :success
  end

  test "should get men" do
    get article_men_url
    assert_response :success
  end

  test "should get women" do
    get article_women_url
    assert_response :success
  end

  test "should get kids" do
    get article_kids_url
    assert_response :success
  end

end
