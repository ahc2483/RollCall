class LoginController < ApplicationController
  def handle
    
    if(params.has_key?(:code))
      
      @fbLogin = Koala::Facebook::OAuth.new(Settings.facebook_app_id, Settings.facebook_app_secret, Settings.facebook_redirect_url)
      
      response = @fbLogin.get_access_token(params[:code])
    
      Rails.logger.info(response)
    
      @user_access_token = response
      
      Rails.logger.info(@user_access_token)
      
      @graph = Koala::Facebook::API.new(@user_access_token)
  
      profile = @graph.get_object("me")
      
      @student = Student.find_by_fb_user_id(profile["id"])
      
      @student.fb_access_token = @user_access_token
      
      @student.save!
      
      redirect_to "/student/#{@student.uid}"
    
    end
    
  end
  
  def cancel
    #render cancellation woh woh page
  end
end
