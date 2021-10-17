class TopController < ApplicationController
    def main
      @tweets = Tweet.all
    end
    def login
       user = User.find_by(uid: params[:uid])
        if user and BCrypt::Password.new(user.pass) == params[:pass]
            session[:login_uid] = params[:uid]
            redirect_to root_path
        else
            render "login_form"
        end
    end 
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end 
end
