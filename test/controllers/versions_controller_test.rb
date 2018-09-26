require 'test_helper'

class VersionsControllerTest < ActionDispatch::IntegrationTest
  test "should get hades" do
    get versions_hades_url
    assert_response :success
  end

  test "should get eros" do
    get versions_eros_url
    assert_response :success
  end

  test "should get cronos" do
    get versions_cronos_url
    assert_response :success
  end

end
