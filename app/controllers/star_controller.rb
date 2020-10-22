class StarController < ApplicationController
  def index
    @stars = Star.all
    @star = Star.where(params[:star_id]).first
  end

  def new
  end

  def create

    @star = Star.new(set_params)
    if @star.save
      redirect_to root_path
    end
  end

  private

  def set_params
    params.require(:star).permit(:rating)
  end
end
