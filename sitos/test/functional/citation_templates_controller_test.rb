require 'test_helper'

class CitationTemplatesControllerTest < ActionController::TestCase
  setup do
    @citation_template = citation_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citation_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citation_template" do
    assert_difference('CitationTemplate.count') do
      post :create, citation_template: @citation_template.attributes
    end

    assert_redirected_to citation_template_path(assigns(:citation_template))
  end

  test "should show citation_template" do
    get :show, id: @citation_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @citation_template
    assert_response :success
  end

  test "should update citation_template" do
    put :update, id: @citation_template, citation_template: @citation_template.attributes
    assert_redirected_to citation_template_path(assigns(:citation_template))
  end

  test "should destroy citation_template" do
    assert_difference('CitationTemplate.count', -1) do
      delete :destroy, id: @citation_template
    end

    assert_redirected_to citation_templates_path
  end
end
