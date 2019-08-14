class CharitiesController < ApplicationController
  def index
    @charities = Charity.all
    render json: @charities
  end

  def show
    @charity = User.find_by(id: params[:id])
  end

  private

   def user_params
     params.require(:charity).permit(:name, :state, :category, :img_url, :description, :website_url)
   end

end
