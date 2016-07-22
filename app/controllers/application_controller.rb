class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
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
    # binding.pry
  end

end
