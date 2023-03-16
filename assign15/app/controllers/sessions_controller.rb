class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user.present?
      session[:user_id] = @user.id
      redirect_to products_path
    end
    #   if @user.role == "admin"
    #     redirect_to products_path
    #   else
    #     redirect_to products_path
    #   end
    # end
  end
end