require 'test_helper'

class InvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get invitations_create_url
    assert_response :success
  end

  test "should get destroy" do
    get invitations_destroy_url
    assert_response :success
  end

end
