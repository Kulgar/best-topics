class TopicsController < ApplicationController

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
  end

  # POST /topics
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_new_path
    end
  end

  # PATCH/PUT /topics/1
  def update
  end

  # DELETE /topics/1
  def destroy
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :content)
    end

end
