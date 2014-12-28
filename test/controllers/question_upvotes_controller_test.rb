require 'test_helper'

class QuestionUpvotesControllerTest < ActionController::TestCase
  setup do
    @question_upvote = question_upvotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_upvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_upvote" do
    assert_difference('QuestionUpvote.count') do
      post :create, question_upvote: {  }
    end

    assert_redirected_to question_upvote_path(assigns(:question_upvote))
  end

  test "should show question_upvote" do
    get :show, id: @question_upvote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_upvote
    assert_response :success
  end

  test "should update question_upvote" do
    patch :update, id: @question_upvote, question_upvote: {  }
    assert_redirected_to question_upvote_path(assigns(:question_upvote))
  end

  test "should destroy question_upvote" do
    assert_difference('QuestionUpvote.count', -1) do
      delete :destroy, id: @question_upvote
    end

    assert_redirected_to question_upvotes_path
  end
end
