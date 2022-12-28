class ApplicationController < ActionController::Base

  layout :layout_by_resource
  before_action :authenticate_user_or_influencer!

  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  def after_sign_out_path_for(resource)
    (resource == :user) ? new_user_session_path : new_influencer_session_path
  end

  # class AuthorizationException < StandardError
  # end

  # rescue_from AuthorizationException do
  #   render text: "Access Denied", status: :unauthorized
  # end

  private
  def layout_by_resource
    if user_signed_in?
      "user"
    elsif influencer_signed_in?
      "influencer"
    else
      "devise"
    end
  end

  protected

  def authenticate_user_or_influencer!
    if user_signed_in?
      authenticate_user!
    elsif influencer_signed_in?
      authenticate_influencer!
    else
      authenticate_user!
    end
  end

end
