class PostsController < ApplicationController
def new
@post = Post.new
end
def create
 @post = Post.new(params[:post])
 
 
  if @post.save
    redirect_to @post
  else
    render 'new'
  end
end

def index
  @posts = Post.all
end

  def show
  @post = Post.find(params[:id])
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
 
  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end
  end
end
private
  def post_params
    params.require(:post).permit(:date, :statya, :summa, :comment)
  end
  