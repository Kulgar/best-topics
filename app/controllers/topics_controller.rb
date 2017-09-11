class TopicsController < ApplicationController

  def index
    @topics = get_topics
  end

  def published
    @topics = get_topics.published
    render "index"
  end

  # GET /topics/1
  def show
    @topic = Topic.find(params[:id])
    @topic_answers = @topic.get_answers(params[:page])
    #@topic_answer  = @topic.topic_answers.build if params[:format] == "html"
    respond_to do |format|
      format.html do 
        @topic_answer = @topic.topic_answers.build
      end
      format.json
    end
  end

  # GET /topics/new
  def new
    @topic = Topic.new
    @topic.build_picture
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
    @topic.build_picture unless @topic.picture.present?
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
    def website_title
      super + " - sujets de discussion"
    end

    def get_topics
      if params[:category_id].present?
        category = Category.find(params[:category_id])
        topics   = category.topics
      end

      topics ||= Topic
      
      topics.preload(:topic_answers).search(params[:search]).paginate(:page => params[:page], :per_page => 10)
    end

    def topic_params
      params.require(:topic).permit(:title, :content, category_ids: [],
        picture_attributes: [:name, :file])
    end

end
