class UsersController < ApplicationController

    def index
        @users = User.all
        @user = User.find_by(consultation_link: params[:consultation_link])
        # @user = User.find_by
    end

    def show
        @user = User.find_by(consultation_link: params[:consultation_link])
    end
end