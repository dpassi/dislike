require 'test_helper'

class DislikedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disliked = dislikeds(:one)
  end

  test "should get index" do
    get dislikeds_url
    assert_response :success
  end

  test "should get new" do
    get new_disliked_url
    assert_response :success
  end

  test "should create disliked" do
    assert_difference('Disliked.count') do
      post dislikeds_url, params: { disliked: { dislike_id: @disliked.dislike_id, user_id: @disliked.user_id } }
    end

    assert_redirected_to disliked_url(Disliked.last)
  end

  test "should show disliked" do
    get disliked_url(@disliked)
    assert_response :success
  end

  test "should get edit" do
    get edit_disliked_url(@disliked)
    assert_response :success
  end

  test "should update disliked" do
    patch disliked_url(@disliked), params: { disliked: { dislike_id: @disliked.dislike_id, user_id: @disliked.user_id } }
    assert_redirected_to disliked_url(@disliked)
  end

  test "should destroy disliked" do
    assert_difference('Disliked.count', -1) do
      delete disliked_url(@disliked)
    end

    assert_redirected_to dislikeds_url
  end
end
