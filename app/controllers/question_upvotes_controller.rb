class QuestionUpvotesController < ApplicationController
  before_action :set_question_upvote, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @question_upvotes = QuestionUpvote.all
    respond_with(@question_upvotes)
  end

  def show
    respond_with(@question_upvote)
  end

  def new
    @question_upvote = QuestionUpvote.new
    respond_with(@question_upvote)
  end

  def edit
  end

  def create
    @question_upvote = QuestionUpvote.new(question_upvote_params)
    @question_upvote.user_id = 1
    @question_upvote.save
    # respond_with(@question_upvote)
    respond_with(@question_upvote) do |format|
      format.html
      format.json {render json: @question_upvote}
    end
  end

  def update
    @question_upvote.update(question_upvote_params)
    respond_with(@question_upvote)
  end

  def destroy
    @question_upvote.destroy
    respond_with(@question_upvote)
  end

  private
    def set_question_upvote
      @question_upvote = QuestionUpvote.find(params[:id])
    end

    def question_upvote_params
      params[:question_upvote]
    end
end
