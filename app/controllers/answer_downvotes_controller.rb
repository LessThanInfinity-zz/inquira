class AnswerDownvotesController < ApplicationController
  before_action :set_answer_downvote, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @answer_downvotes = AnswerDownvote.all
    respond_with(@answer_downvotes)
  end

  def show
    respond_with(@answer_downvote)
  end

  def new
    @answer_downvote = AnswerDownvote.new
    respond_with(@answer_downvote)
  end

  def edit
  end

  def create
    @answer_downvote = AnswerDownvote.new(answer_downvote_params)
    @answer_downvote.save
    respond_with(@answer_downvote)
  end

  def update
    @answer_downvote.update(answer_downvote_params)
    respond_with(@answer_downvote)
  end

  def destroy
    @answer_downvote.destroy
    respond_with(@answer_downvote)
  end

  private
    def set_answer_downvote
      @answer_downvote = AnswerDownvote.find(params[:id])
    end

    def answer_downvote_params
      params[:answer_downvote]
    end
end
