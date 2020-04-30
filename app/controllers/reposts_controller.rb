class RepostsController < ApplicationController
  include CableReady::Broadcaster

  def create
    post = Post.find(params[:post_id])
    post.increment! :reposts_count

    cable_ready["timeline"].text_content(
      selector: "#post-#{post.id}-reposts",
      text: post.reposts_count
    )
    cable_ready.broadcast

    if up?
      render partial: post
    else
      redirect_to posts_path
    end
  end
end
