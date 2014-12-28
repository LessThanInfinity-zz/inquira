class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    puts "in answers controller index."
    @answers = Answer.all
    respond_with(@answers) do |format|
      format.html
      format.json {render json: @answers}
    end
    # respond_with(@answers)
  end

  def show
    respond_with(@answer) do |format|
      format.html
      format.json {render json: @answer}
    end
    # respond_with(@answer)
  end

  def new
    @answer = Answer.new
    # respond_with(@answer)
    respond_with(@answer) do |format|
      format.html
      format.json {render json: @answer}
    end
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = 1 # Need to change this as well. 
    @answer.save
    # respond_with(@answer)
    respond_with(@answer) do |format|
      format.html
      format.json {render json: @answer}
    end

  end

  def update
    @answer.update(answer_params)
    # respond_with(@answer)
    respond_with(@answer) do |format|
      format.html
      format.json {render json: @answer}
    end

  end

  def destroy
    @answer.destroy
    # respond_with(@answer)
    respond_with(@answer) do |format|
      format.html
      format.json {render json: @answer}
    end

  end

  private
    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params[:answer]
      params.require(:answer).permit(:body, :anonymous, :created_at, :updated_at, :user_id, :question_id)
    end
end
