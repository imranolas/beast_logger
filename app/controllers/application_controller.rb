class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(user)
    seshes_path
  end

  def after_sign_up_path_for(user)
    seshes_path
  end

end
