class LikesController < ApplicationController
    before_action :authorized, :find_post
    
    # def create
    #     @like = Like.create(user_id: params[:user][:user.id], movie_id: params[:user][:movie_id])
    #     render json: { user: UserSerializer.new(@user), token: @token }, status: :created
    # end

    def create
        if already_liked?
            flash[:notice] = "Sorry, can't like more than once!"
          else
            @movie.likes.create(user_id: params[:user][:user.id])
            render json: {movie: MovieSerializer.new(@movie), token: @token}, status: :created
        end
    end

    def destroy

        @like = Like.find_by(user_id: current_user.id)
        @like.destroy

        render json: {pic: params[:pic_id]}
    end

    private

    def find_post
        @pic = Pic.find(params[:pic_id])
    end

    def already_liked?
        Like.where(user_id: @user.id, pic_id:
        params[:pic_id]).exists?
    end
end
