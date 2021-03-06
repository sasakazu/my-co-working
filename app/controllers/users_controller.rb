class UsersController < ApplicationController



  def show
    @user = User.find(params[:id])
    @spaces = @user.spaces.paginate(page: params[:page])


  end

  def edit
    @user = User.find(params[:id])

  end


  def update
     @user = User.find(params[:id])
     if @user.update_attributes(user_params)
       flash[:success] = "Profile updated"
           redirect_to @user
     else
       render 'edit'
     end
   end


  def new
    @user = User.new
  end


  def create
    @user = User.create(user_params)

    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'

    end

  end



private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :icon)

  end

end
