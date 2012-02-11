require 'test_helper'

class CitableSitesControllerTest < ActionController::TestCase
  setup do
    @citable_site = citable_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citable_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citable_site" do
    assert_difference('CitableSite.count') do
      post :create, citable_site: @citable_site.attributes
    end

    assert_redirected_to citable_site_path(assigns(:citable_site))
  end

  test "should show citable_site" do
    get :show, id: @citable_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @citable_site
    assert_response :success
  end

  test "should update citable_site" do
    put :update, id: @citable_site, citable_site: @citable_site.attributes
    assert_redirected_to citable_site_path(assigns(:citable_site))
  end

  test "should destroy citable_site" do
    assert_difference('CitableSite.count', -1) do
      delete :destroy, id: @citable_site
    end

    assert_redirected_to citable_sites_path
  end
end
