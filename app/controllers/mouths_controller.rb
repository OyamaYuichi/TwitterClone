class MouthsController < ApplicationController
  def index
  end
  def new
    @mouth = Mouth.new
  end
  def create
    Mouth.create(content: params[:mouth][:content])
    redirect_to new_mouth_path
  end
end
