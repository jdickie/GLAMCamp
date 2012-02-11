require 'test_helper'

class CitationsControllerTest < ActionController::TestCase
  test "should get get_citation_info_by_domain" do
    get :get_citation_info_by_domain
    assert_response :success
  end

end
