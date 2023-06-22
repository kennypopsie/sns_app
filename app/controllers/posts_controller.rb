class PostsController < ApplicationController
 before_action :authenticate_user!
  def new 
    render :new
  end 
  
  def index
    render :index
  end 
  
  def create
    redirect_to new_post_path
  end 
end
