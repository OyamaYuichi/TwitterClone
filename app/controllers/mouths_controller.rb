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
  def edit
    @mouth = Mouth.find(params[:id])
  end
  def update
    @mouth = Mouth.find(params[:id])
    if @mouth.update(mouth_params)
      redirect_to mouths_path
    else
      render :edit
    end
  end
  private
  def mouth_params
    params.require(:mouth).permit(:content)
  end
end
