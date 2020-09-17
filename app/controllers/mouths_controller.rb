class MouthsController < ApplicationController
  def index
    @mouths = Mouth.all
  end
  def new
    @mouth = Mouth.new
  end
  def create
    Mouth.create(mouth_params)
    redirect_to new_mouth_path
  end
  private
  def mouth_params
    params.require(:mouth).permit(:content)
  end
end
