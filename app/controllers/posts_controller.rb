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
        post = Post.create(post_params)
        render json: post
    end

    def destroy
      post = Post.find(params[:id])
      post.destroy
        render json: {message: "Successfully deleted post"}
    end

    def update
        post = post.find(params[:id])
        post.update(post_params)
        render json: post
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :image_url, :user, :upvotes, :downvotes)
    end
    
end
