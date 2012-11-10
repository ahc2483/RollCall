class LoginController < ApplicationController
  def handle
    
    @user_access_token = params[:code]
    
    Rails.logger.info(@user_access_token)
    
    @client = FBGraph::Client.new(:client_id => Settings.facebook_app_id,:secret_id =>Settings.facebook_app_secret ,:token => @user_access_token)
    
    @client.
    
    #parse for Facebook token
    
    #If the token is valid, redirect to MyClasses controller
    
    #Else display cancellation page
    
  end
  
  def cancel
    #render cancellation woh woh page
  end
end
