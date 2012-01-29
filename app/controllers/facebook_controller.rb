class FacebookController < ApplicationController
  skip_before_filter :authenticate_user!
  def facebook_login
    if current_facebook_user
      current_facebook_user.fetch
      
      @user = User.find_or_create_by_email(current_facebook_user.email)
      
      @user.update_attribute :facebook_id, current_facebook_user.id
      
      sign_in @user
      redirect_to root_url
    end
  end
end