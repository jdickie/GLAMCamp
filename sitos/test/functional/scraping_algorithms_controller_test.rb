require 'test_helper'

class ScrapingAlgorithmsControllerTest < ActionController::TestCase
  setup do
    @scraping_algorithm = scraping_algorithms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scraping_algorithms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scraping_algorithm" do
    assert_difference('ScrapingAlgorithm.count') do
      post :create, scraping_algorithm: @scraping_algorithm.attributes
    end

    assert_redirected_to scraping_algorithm_path(assigns(:scraping_algorithm))
  end

  test "should show scraping_algorithm" do
    get :show, id: @scraping_algorithm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scraping_algorithm
    assert_response :success
  end

  test "should update scraping_algorithm" do
    put :update, id: @scraping_algorithm, scraping_algorithm: @scraping_algorithm.attributes
    assert_redirected_to scraping_algorithm_path(assigns(:scraping_algorithm))
  end

  test "should destroy scraping_algorithm" do
    assert_difference('ScrapingAlgorithm.count', -1) do
      delete :destroy, id: @scraping_algorithm
    end

    assert_redirected_to scraping_algorithms_path
  end
end
