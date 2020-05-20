class UsersController < ApplicationController
    before_action :authorized, only: [:persist, :destroy]

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        # byebug
        @user = User.create(name: params[:user][:name], username: params[:user][:username], email: params[:user][:email], password: params[:user][:password])
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            UserMailer.sample_email(@user).deliver        #action mailer
            render json: { user: UserSerializer.new(@user), token: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def login
        @user = User.find_by(username: params[:username])
    # byebug
        if @user && @user.authenticate(params[:password])
          wristband = encode_token({user_id: @user.id})
          render json: {user: UserSerializer.new(@user), token: wristband}
        else
          render json: {error: "Invalid username or password. Please try again!"}
        end
      end   

    def persist
        wristband = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: wristband}
    end

    def update
        @user = User.find(params[:id])
        @user.update(name: params[:name], username: params[:username], email: params[:email])
        # byebug
        render json: { user: @user, token: @token }
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy

        render json: {message: 'Successfully deleted!'}
    end

private 

    def user_params
        params.permit(params[:user][:username], params[:user][:password])
    end
end
