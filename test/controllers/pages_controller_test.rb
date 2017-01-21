require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
  end

  test "should get articles" do
    get pages_articles_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

end
