class Admin::PostsController < ApplicationController
    before_action :if_not_admin
    before_action :set_post, only: [:show, :edit, :destroy]

        def index
            @posts = Post.all
        end
        
        def show
            @posts = Post.where(id: params[:id])
        end
        
        def new
            @post = Post.new
        end
        
        def create
            Post.create(post_params)
            redirect_to("/admin/posts")
        end
        
        def post_params
            params.require(:post).permit(:name, :company, :station, :prefuctures, :address, :industry, :floor, :area, :rent, :common)
        end
        
        def edit
            @post = Post.find_by(id: params[:id])
        end
        
        def update
            @post = Post.find(params[:id])
            @post.update(post_params)
            redirect_to("/admin/posts/#{@post.id}")
        end
        
        def destroy
            @post = Post.find_by(id: params[:id])
            @post.destroy
            redirect_to("/admin")
        end

  private
  
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
