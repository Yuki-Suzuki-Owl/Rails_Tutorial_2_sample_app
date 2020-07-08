class UsersController < ApplicationController
  def new
    # debugger
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      #
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by(id:params[:id])
    # @user = User.find(params[:id])
    # debugger
  end
end
