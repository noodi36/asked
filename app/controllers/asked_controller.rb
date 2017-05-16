class AskedController < ApplicationController
  def index
    @all_post = Post.all
    @counting = @all_post.count
  end
  def write
    new_post = Post.new
    new_post.content = params[:content]
    new_post.save
    redirect_to "/asked/index"
  end
  
  def update_view
    @update_post = Post.find(params[:id])
  end
  
  def update
    @update_post = Post.find(params[:id])
    @update_post.content = params[:content]
    @update_post.save
    redirect_to "/asked/index"
  end
  
  def destroy
    @destroy_post = Post.find(params[:id])
    @destroy_post.destroy
    redirect_to "/asked/index"
  end
  
  def comment
    new_comment = Comment.new
    new_comment.post_id = params[:post_id]
    new_comment.content = params[:content]
    new_comment.save
    redirect_to "/asked/index"
  end
end
