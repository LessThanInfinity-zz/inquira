require 'test_helper'

class AnswerDownvotesControllerTest < ActionController::TestCase
  setup do
    @answer_downvote = answer_downvotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_downvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_downvote" do
    assert_difference('AnswerDownvote.count') do
      post :create, answer_downvote: {  }
    end

    assert_redirected_to answer_downvote_path(assigns(:answer_downvote))
  end

  test "should show answer_downvote" do
    get :show, id: @answer_downvote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_downvote
    assert_response :success
  end

  test "should update answer_downvote" do
    patch :update, id: @answer_downvote, answer_downvote: {  }
    assert_redirected_to answer_downvote_path(assigns(:answer_downvote))
  end

  test "should destroy answer_downvote" do
    assert_difference('AnswerDownvote.count', -1) do
      delete :destroy, id: @answer_downvote
    end

    assert_redirected_to answer_downvotes_path
  end
end
