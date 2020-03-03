require 'test_helper'

class BeforeActionControllerTest < ActionDispatch::IntegrationTest
  test "should get :authenticate_user!" do
    get before_action_:authenticate_user!_url
    assert_response :success
  end

end
