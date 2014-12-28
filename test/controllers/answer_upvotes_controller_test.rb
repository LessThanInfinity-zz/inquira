require 'test_helper'

class AnswerUpvotesControllerTest < ActionController::TestCase
  setup do
    @answer_upvote = answer_upvotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_upvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_upvote" do
    assert_difference('AnswerUpvote.count') do
      post :create, answer_upvote: {  }
    end

    assert_redirected_to answer_upvote_path(assigns(:answer_upvote))
  end

  test "should show answer_upvote" do
    get :show, id: @answer_upvote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_upvote
    assert_response :success
  end

  test "should update answer_upvote" do
    patch :update, id: @answer_upvote, answer_upvote: {  }
    assert_redirected_to answer_upvote_path(assigns(:answer_upvote))
  end

  test "should destroy answer_upvote" do
    assert_difference('AnswerUpvote.count', -1) do
      delete :destroy, id: @answer_upvote
    end

    assert_redirected_to answer_upvotes_path
  end
end
