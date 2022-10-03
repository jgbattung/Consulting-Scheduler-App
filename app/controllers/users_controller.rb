class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find_by(consultation_link: params[:consultation_link])
    end
end