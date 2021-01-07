class UsersController < ApplicationController
  def  index
    @users = User.all
  end
    @subscription = Subscription.new
  
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(name: params[:user]['name'],email: params[:user]['email'],password: params[:user]['password'])
    @user.save!
    redirect_to @user
  end

  def subscription_create
    @user = User.find(params[:id])
    @user.build_subscription().save
    redirect_to :action => :index
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
    redirect_to :action => :index
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
