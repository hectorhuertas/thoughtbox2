class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate!

  def authenticate!
    redirect_to login_path unless authenticated?
  end

  def authenticated?
    PermissionService.allow?(
      user: current_user,
      controller: params[:controller],
      action: params[:action]
    )
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
