class CredsController < ApplicationController
  before_action :require_user_logged_in!

  def edit
  end

  def update
    if Current.user.update(creds_params)
      redirect_to root_path, notice: "Credentials updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def creds_params
    params.require(:user).permit(:email, :username)
  end
end
