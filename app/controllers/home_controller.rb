class HomeController < ApplicationController

  def job_seeker
    if !session[:user].nil?
      user_type = User.find_by(:user_id=>session[:user])

      if !user_type.nil?
        if user_type.user_type_id =1
          redirect_to root_url, notice: "Thank you for signing up  "
        else
          redirect_to root_url, notice: "Thank you for signing up  "
        end
      end
    end
  end
end
