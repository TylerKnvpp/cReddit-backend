class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
       user = User.create(user_params)
       token = JWT.encode({user_id: user.id}, ENV['JWT_TOKEN'])
       render json: {token: token, username: user.username }  
    end

    def update
       user = User.update(user_params)
       render json: user  
    end


    private

    def user_params
        params.require(:user).permit(:name, :username, :password_digest, :avatar, :credibility)
    end

end
