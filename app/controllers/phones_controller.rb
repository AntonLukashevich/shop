class PhonesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
  	@phones = Phone.all
  end

  def show
  	@phone = Phone.find(params[:id])
  end

  def new
  	@phone = Phone.new
  end

  def edit
  	@phone = Phone.find(params[:id])
  end

  def create
	@phone = Phone.new(phone_params)
	
	if @phone.save
	    redirect_to @phone
	else
		render 'new'
	end
  end

  def update
    @phone = Phone.find(params[:id])

    if @phone.update(phone_params)
      redirect_to @phone
    else
      render 'edit'
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy

  	redirect_to phone_path
end

  private
    def phone_params
	    params.require(:phone).permit(:phone,:operator,:user_id)
  end
end
