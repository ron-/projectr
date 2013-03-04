class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(root_path)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    render :new
  end

  def show
  end

  def update
  end

  def destroy
  end

end