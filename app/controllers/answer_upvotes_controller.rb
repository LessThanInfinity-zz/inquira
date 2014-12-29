class AnswerUpvotesController < ApplicationController
  before_action :set_answer_upvote, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @answer_upvotes = AnswerUpvote.all
    respond_with(@answer_upvotes)
  end

  def show
    respond_with(@answer_upvote)
  end

  def new
    @answer_upvote = AnswerUpvote.new
    respond_with(@answer_upvote)
  end

  def edit
  end

  def create
    @answer_upvote = AnswerUpvote.new(answer_upvote_params)
    @answer_upvote.save
    # respond_with(@answer_upvote)
    respond_with(@answer_upvote) do |format|
      format.html
      format.json {render json: @answer_upvote}
    end

  end

  def update
    @answer_upvote.update(answer_upvote_params)
    respond_with(@answer_upvote)
  end

  def destroy
    @answer_upvote.destroy
    respond_with(@answer_upvote)
  end

  private
    def set_answer_upvote
      @answer_upvote = AnswerUpvote.find(params[:id])
    end

    def answer_upvote_params
      params[:answer_upvote]
      params.require(:answer_upvote).permit(:answer_id,:user_id)

    end
end
