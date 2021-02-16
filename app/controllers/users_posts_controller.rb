class UsersPostsController < ApplicationController
    before_action :if_not_admin



    def index
        @users_posts = Userspost.where(user_id: current_user.id)
    end

    def new
        @users_post = Userspost.new
    end

    def show
        @users_posts = Userspost.where(user_id: current_user.id, id: params[:id])
        @users_post = Userspost.find_by(user_id: current_user.id, id: params[:id])
    end

    def edit
        @users_posts = Userspost.find_by(user_id: current_user.id, id: params[:id])
    end

    def update
        @users_post = Userspost.find(params[:id])
        @users_post.update(users_posts_params)
        redirect_to("/users_posts")
    end
    
    def destroy
        @users_post = Userspost.find_by(user_id: current_user.id, id: params[:id])
        @users_post.destroy
        redirect_to("/users_posts/index")
    end

    def create
        Userspost.create(users_posts_params)
        redirect_to("/")
    end

    private
        def users_posts_params
            params.require(:userspost).permit(:user_id,:name, :company, :station, :prefuctures, :address, :industry, :floor, :area, :rent, :common, :deposit, :features)
        end
  
        def if_not_admin
          redirect_to root_path unless user_signed_in?
        end


end
