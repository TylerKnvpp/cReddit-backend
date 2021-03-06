class PostsController < ApplicationController

    def index
      posts = Post.all
      render json: posts
    end
    
    def show
        post = Post.find(params[:id])
       render json: post
    end

    def create
        post = Post.new(post_params)
        user = User.find(params[:user][:id])
        post[:user_id] = user.id
        post.save
            
        render json: post
    end

    def destroy
      post = Post.find(params[:id])
      post.destroy
        render json: {message: "Successfully deleted post"}
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :topic, :image_url, :user, :upvotes, :downvotes)
    end
    
end
