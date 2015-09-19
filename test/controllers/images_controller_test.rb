require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  test "should get alt:string" do
    get :alt:string
    assert_response :success
  end

  test "should get src:string" do
    get :src:string
    assert_response :success
  end

  test "should get url:string" do
    get :url:string
    assert_response :success
  end

  test "should get secure_url:string" do
    get :secure_url:string
    assert_response :success
  end

  test "should get game_id:integer" do
    get :game_id:integer
    assert_response :success
  end

end
