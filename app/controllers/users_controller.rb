class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def create
        uid =  params[:user][:uid]
        pass = BCrypt::Password.create( params[:user][:pass])
        profile = params[:user][:profile]
        @user = User.new(uid: uid,pass: pass, profile: profile)
        if @user.save
            redirect_to controller: :users, action: :index
        else
            render 'new'
        end
    end
    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to controller: :users, action: :index
    end
end
