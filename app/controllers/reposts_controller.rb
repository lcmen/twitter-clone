class RepostsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.increment! :reposts_count

    redirect_to posts_path
  end
end
