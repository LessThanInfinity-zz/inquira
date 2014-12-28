require 'test_helper'

class QuestionDownvotesControllerTest < ActionController::TestCase
  setup do
    @question_downvote = question_downvotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_downvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_downvote" do
    assert_difference('QuestionDownvote.count') do
      post :create, question_downvote: {  }
    end

    assert_redirected_to question_downvote_path(assigns(:question_downvote))
  end

  test "should show question_downvote" do
    get :show, id: @question_downvote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_downvote
    assert_response :success
  end

  test "should update question_downvote" do
    patch :update, id: @question_downvote, question_downvote: {  }
    assert_redirected_to question_downvote_path(assigns(:question_downvote))
  end

  test "should destroy question_downvote" do
    assert_difference('QuestionDownvote.count', -1) do
      delete :destroy, id: @question_downvote
    end

    assert_redirected_to question_downvotes_path
  end
end
