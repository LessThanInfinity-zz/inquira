class TaggingsController < ApplicationController
  before_action :set_tagging, only: [:destroy]

  respond_to :html, :json

  def new
    @tagging = Tagging.new
    # respond_with(@tagging)
    respond_with(@tagging) do |format|
      format.html
      format.json {render json: @tagging}
    end
  end

  def create
    @tagging = Tagging.new(tagging_params)
    @tagging.save
    # respond_with(@tagging)

    respond_with(@tagging) do |format|
      format.html
      format.json {render json: @tagging}
    end
  end

  def destroy
    @tagging.destroy
    respond_with(@tagging)

    respond_with(@tagging) do |format|
      format.html
      format.json {render json: @tagging}
    end
  end

  private
    def set_tagging
      @tagging = tagging.find(params[:id])
    end

    def tagging_params
      params[:tagging]
      params.require(:tagging).permit(:question_id, :topic_id)
    end

end
