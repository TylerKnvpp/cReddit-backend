class AuthController < ApplicationController

    def user_profile
        # byebug
        token = request.headers['Authorization']
        user_id = JWT.decode(token, ENV['JWT_TOKEN'])[0]['user_id']
        user = User.find(user_id)
        render json: {user: user}
    end
end
