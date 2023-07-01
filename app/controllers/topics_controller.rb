class TopicsController < ApplicationController
 def new
  @topic = Topic.new
   render :new
 end 
 
 def index
      @title = params[:title]
    if @title.present?
      @topics = Topic.where("title LIKE?", "%#{@title}%")
    else 
      @topics = Topic.all
    end 
    render :index
 end 
 
 def create
  @topic = Topic.new(post_params)
 
  if @topic.save
   redirect_to index_topic_path, notice:'登録しました'
  else
   render :new, status: :unprocessable_entity
  end
 end 
 
 private
 def post_params
  params.require(:topic).permit(:title, :body, :image)
 end 
 # def create
 #   redirect_to edit_post_path
 # end 
 
 def edit
   render :edit
 end 
 
 def update
   redirect_to 'topics/edit'
 end 
 
 
end
