class StaticController < ApplicationController

  def home
    redirect_to :dashboard if current_user
  end

  def dashboard
    redirect_to :home if !current_user
  end
end
