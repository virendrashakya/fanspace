class ApplicationController < ActionController::Base

  before_action :authenticate_user_or_influencer!
  layout :layout_by_resource

  def after_sign_in_path_for(resource)
    home_index_path
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
      
      puts ">>>>>>>>>>>>>>>>>>>>>>> user signed ind"
    elsif influencer_signed_in?
      puts ">>>>>>>>>>>>>>>>>>>>>>> Influencer signed ind"
    else
      puts ">>>>>>>>>>>>>>>>>>>>>>> This is an exception"
    end
  end

end
