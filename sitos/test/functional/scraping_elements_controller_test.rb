require 'test_helper'

class ScrapingElementsControllerTest < ActionController::TestCase
  setup do
    @scraping_element = scraping_elements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scraping_elements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scraping_element" do
    assert_difference('ScrapingElement.count') do
      post :create, scraping_element: @scraping_element.attributes
    end

    assert_redirected_to scraping_element_path(assigns(:scraping_element))
  end

  test "should show scraping_element" do
    get :show, id: @scraping_element
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scraping_element
    assert_response :success
  end

  test "should update scraping_element" do
    put :update, id: @scraping_element, scraping_element: @scraping_element.attributes
    assert_redirected_to scraping_element_path(assigns(:scraping_element))
  end

  test "should destroy scraping_element" do
    assert_difference('ScrapingElement.count', -1) do
      delete :destroy, id: @scraping_element
    end

    assert_redirected_to scraping_elements_path
  end
end
