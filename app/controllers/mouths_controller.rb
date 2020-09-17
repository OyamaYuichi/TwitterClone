class MouthsController < ApplicationController
  def index
    @mouths = Mouth.all
  end
  def new
    @mouth = Mouth.new
  end
  def create
    @mouth = Mouth.new(mouth_params)
    if @mouth.save
      redirect_to mouths_path
    else
      render :new
    end
  end
  def show
    @mouth = Mouth.find(params[:id])
  end
  private
  def mouth_params
    params.require(:mouth).permit(:content)
  end
end
