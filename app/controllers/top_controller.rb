class TopController < ApplicationController

  def index
    if user_signed_in?
      @user = User.find(current_user.id)
      logger.info(@user.name)
    end
  end

end
