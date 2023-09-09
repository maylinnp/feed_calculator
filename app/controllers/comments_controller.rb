class CommentsController < ApplicationController
  def create
    @feed = Feed.find(params[:feed_id])
    @comment = @feed.comments.create(comment_params)
    redirect_to feed_path(@feed)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
