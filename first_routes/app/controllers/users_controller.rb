class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    render json: params #this automatically grabs params being passed in, this is a feature of active record
  end

  def show
    @user = User.find(params[:id])
    if @user
      render json: params
    else
      render json: user.errors.full_messages, status: 404
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    index #this refers to the index action, so that the updated list will render again
  end

  def update
    @user = User.find(params[:id]) #since update action requires id to be passed in we know we will get one
    @user.update(params[:user].permit(:name, :email)) #this is the active record update method 
    if @user
      render json: params
    else
      render json: user.errors.full_messages
    end

  end

  def create
    user = User.new(params[:user].permit(:name, :email))

    if user.save
      render json: user
    else render json: user.errors.full_messages, status: :unprocessable_entity #this renders the default message thats set by active record but now in json format
    end
  end

end
