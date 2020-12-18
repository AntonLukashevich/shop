class EmailsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
 def index
  	@emails = Email.all
  end

  def show
  	@email = Email.find(params[:id])
  end

  def new
  	@email = Email.new
  end

  def edit
  	@email = Email.find(params[:id])
  end

  def create
	@email = Email.new(email_params)
	
	if @email.save
	    redirect_to @email
	else
		render 'new'
	end
  end

  def update
    @email = Email.find(params[:id])

    if @email.update(email_params)
      redirect_to @email
    else
      render 'edit'
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

  	redirect_to email_path
end

  private
    def email_params
	    params.require(:email).permit(:email,:user_id)
  end
end
