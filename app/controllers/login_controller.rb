class LoginController < ApplicationController
  def handle
    
    @user_access_token = params[:code]
    
    Rails.logger.info(@user_access_token)
    
    
    #parse for Facebook token
    
    #If the token is valid, redirect to MyClasses controller
    
    #Else display cancellation page
    
  end
  
  def cancel
    #render cancellation woh woh page
  end
end
