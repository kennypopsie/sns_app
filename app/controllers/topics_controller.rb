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
 
 


 # def create
 #   redirect_to edit_post_path
 # end 
 
 # def edit
 #   render :edit
 # end 
 
 # def update
 #   redirect_to 'topics/edit'
 # end 
   # ここから追加
  def edit
    @topic = Topic.find(params[:id])
    render :edit
  end

  def update
    @topic = Topic.find(params[:id])
    # if params[:post][:image]
    #   @topic.image.attach(params[:post][:image])
    # end
    if @topic.update(post_params)
      redirect_to index_topic_path, notice: '更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  # ここまで
 
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to index_topic_path, notice: '削除しました'
  end 
  
 
 
    private
 def post_params
  params.require(:topic).permit(:title, :body, :image)
 end 
  
end
