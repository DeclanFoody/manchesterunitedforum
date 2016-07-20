class RepliesController < ApplicationController
  
before_filter :load_post
before_filter :restrict_access
  def new
    @reply = @post.replies.build
  end

  def create
    @reply = @post.replies.build(reply_params)
    @reply.user_id = current_user.id

    if @reply.save 
      redirect_to @post, notice: "reply created successfully"
    else
      render :new
    end
  end

protected

  def load_post
    @post = Post.find(params[:post_id])
  end

  def reply_params
    params.require(:reply).permit(:text, :rating_out_of_ten)
  end

end
