class LikesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.increment! :likes_count

    if up?
      render partial: post
    else
      redirect_to posts_path
    end
  end
end
