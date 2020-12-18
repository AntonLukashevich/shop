class UsersController < ApplicationController

 def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
    @user.build_address
  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
  #binding.pry
	@user = User.new(user_params)
	#binding.pry
	if @user.save
	    redirect_to @user
	else
		render 'new'
	end
  end

  

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

  	redirect_to users_path
end

  private
    def user_params
	    params.require(:user).permit(:title, :date_birth, :role_id, :email, :password,
       :password_confirmation, address_attributes: [:address], phone_attributes: [:phone, :operator]).merge(role_id: Role.where(title: 'user').last.id)
  end
end
