class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        # byebug
        @user = User.create(username: params[:user][:username], password: params[:user][:password])
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: @user, token: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end


    def profile
        render json: { user: current_user }, status: :accepted
    end

private 

    def user_params
        params.permit(params[:user][:username], params[:user][:password])
    end
end
