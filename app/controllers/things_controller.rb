class ThingsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def show
    thing = Thing.find(params[:id])
    render json: thing
  end

  def create
    thing = Thing.create!(thing_params)
    render json: thing
  end

  private

  def thing_params
    params.require(:thing).permit(:name)
  end
end
