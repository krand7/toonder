class VoteController < ApplicationController

  def create_positive
    Vote.find_or_initialize_by(user_id: current_user.id, character_id: params[:character]).update(rating: 1)
    redirect_to dashboard_path
  end

  def create_negative
    Vote.find_or_initialize_by(user_id: current_user.id, character_id: params[:character]).update(rating: 0)
    redirect_to dashboard_path
  end

end
