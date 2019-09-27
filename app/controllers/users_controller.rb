class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
       user = User.create(user_params)
       render json: user  
    end

end
