class CommentsController < ApplicationController
  def create
  	@event = Event.find params[:event_id]

    @comment = @event.comments.build comment_params
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @event, notice: "Comment added" }
        format.js
      else
        format.html { redirect_to @event, alert: "Comment not added :(" }
        format.js { render 'comment_error'}
      end
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
