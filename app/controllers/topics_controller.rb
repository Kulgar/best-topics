class TopicsController < ApplicationController

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_new_path
    end
  end

  def topic_params
    params.require(:topic).permit(:title, :content)
  end

end
