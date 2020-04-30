class LikesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.increment! :likes_count

    redirect_to posts_path
  end
end
