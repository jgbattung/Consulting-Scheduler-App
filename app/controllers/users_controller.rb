class UsersController < ApplicationController
    def show
        @user = User.find_by(consultation_link: params[:consultation_link])
    end
end