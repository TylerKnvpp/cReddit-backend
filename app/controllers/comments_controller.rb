class CommentsController < ApplicationController


    def index
      comments = Comment.all
      render json: comments
    end
    
    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        comment.user_id = 2
        comment.post_id = 2
        comment.save
        render json: comment
    end

    def destroy
      comment = Comment.find(params[:id])
      comment.destroy
        render json: {message: "Successfully deleted comment."}
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :upvotes, :downvotes, :source, :source_validated, :source_disputed, :is_fact?, :user, :post)
    end

end
