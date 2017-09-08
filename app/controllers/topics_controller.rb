class TopicsController < ApplicationController

  def index
    @topics = Topic.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /topics/1
  def show
    @topic = Topic.find(params[:id])
  end

  # GET /topics/new
  def new
    @topic = Topic.new
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
  end

  # POST /topics
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path
    end
  end

  # PATCH/PUT /topics/1
  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      redirect_to @topic
    end
  end

  # DELETE /topics/1
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_url
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :content)
    end

end
