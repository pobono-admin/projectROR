class StaticPagesController < ApplicationController


#change it to users_controller, def show
  # def home
  #   if logged_in?
  #     @micropost  = current_user.microposts.build
  #     @feed_items = current_user.feed
  #   end
  # end

  def help
  end

  def about
  end

  def contact
  end
end