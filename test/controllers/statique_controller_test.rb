require 'test_helper'

class StatiqueControllerTest < ActionDispatch::IntegrationTest
  test "should get accueil" do
    get statique_accueil_url
    assert_response :success
  end

  test "should get about" do
    get statique_about_url
    assert_response :success
  end

end
