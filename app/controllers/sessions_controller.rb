class SessionsController < ApplicationController
  def new
    @title_page = "Zaloguj"
  end

  def create
    @title_page = "Zaloguj"
    user = User.find_by_mail(params[:session][:mail].downcase)
    if user && User.find_by_password(params[:session][:password])
      log_in user
#      redirect_to user
      redirect_back_or user
      flash[:success] = 'Pozytywne zalogowanie'
    else
      flash[:danger] = 'Niepoprawny login lub haslo!'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
