class Users::RelationshipsController < ApplicationController

  # respond_to :html, :json

  def create
    
    # binding.pry
    
    @influencer = Influencer.find(params[:influencer_id])
    current_user.follow_influencer(@influencer)
    respond_to do |format|
      format.html { redirect_to dashboard_index_path }
      format.js
    end
  end

  def destroy

    # binding.pry
    
    @influencer = Influencer.find(params[:influencer_id])
    current_user.unfollow_influencer(@influencer)
    respond_to do |format|
      format.html { redirect_to dashboard_index_path }
      format.js
    end
  end

end
