require 'test_helper'

class DownloadsControllerTest < ActionDispatch::IntegrationTest
  test "should get isoone" do
    get downloads_isoone_url
    assert_response :success
  end

  test "should get isotwo" do
    get downloads_isotwo_url
    assert_response :success
  end

  test "should get isothree" do
    get downloads_isothree_url
    assert_response :success
  end

  test "should get privacy" do
    get downloads_privacy_url
    assert_response :success
  end

end
