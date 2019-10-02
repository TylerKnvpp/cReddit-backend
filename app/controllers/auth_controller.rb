class AuthController < ApplicationController

    def user_profile
        # byebug
        token = request.headers['Authorization']
        user_id = JWT.decode(token, ENV['JWT_TOKEN'])[0]['user_id']
        user = User.find(user_id)
        render json: {user: user}
    end

    def login
        byebug
        user = User.find_by(username: params[:user][:username])
        token = JWT.encode({user_id: user.id}, ENV['JWT_TOKEN']) if user
        if user && user.authenticate(params[:user][:password])
            render json: {user: user, token: token}
        else
            render :json => { :errors => user.errors.full_messages}
        end
    end

end
