require 'test_helper'

class ListedPicturesControllerTest < ActionController::TestCase
  setup do
    @listed_picture = listed_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listed_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listed_picture" do
    assert_difference('ListedPicture.count') do
      post :create, listed_picture: @listed_picture.attributes
    end

    assert_redirected_to listed_picture_path(assigns(:listed_picture))
  end

  test "should show listed_picture" do
    get :show, id: @listed_picture.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listed_picture.to_param
    assert_response :success
  end

  test "should update listed_picture" do
    put :update, id: @listed_picture.to_param, listed_picture: @listed_picture.attributes
    assert_redirected_to listed_picture_path(assigns(:listed_picture))
  end

  test "should destroy listed_picture" do
    assert_difference('ListedPicture.count', -1) do
      delete :destroy, id: @listed_picture.to_param
    end

    assert_redirected_to listed_pictures_path
  end
end
