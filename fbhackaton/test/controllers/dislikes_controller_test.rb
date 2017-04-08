require 'test_helper'

class DislikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dislike = dislikes(:one)
  end

  test "should get index" do
    get dislikes_url
    assert_response :success
  end

  test "should get new" do
    get new_dislike_url
    assert_response :success
  end

  test "should create dislike" do
    assert_difference('Dislike.count') do
      post dislikes_url, params: { dislike: { name: @dislike.name, quantity: @dislike.quantity, user_id: @dislike.user_id } }
    end

    assert_redirected_to dislike_url(Dislike.last)
  end

  test "should show dislike" do
    get dislike_url(@dislike)
    assert_response :success
  end

  test "should get edit" do
    get edit_dislike_url(@dislike)
    assert_response :success
  end

  test "should update dislike" do
    patch dislike_url(@dislike), params: { dislike: { name: @dislike.name, quantity: @dislike.quantity, user_id: @dislike.user_id } }
    assert_redirected_to dislike_url(@dislike)
  end

  test "should destroy dislike" do
    assert_difference('Dislike.count', -1) do
      delete dislike_url(@dislike)
    end

    assert_redirected_to dislikes_url
  end
end
