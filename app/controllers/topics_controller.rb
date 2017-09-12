class TopicsController < ApplicationController
  before_action :set_topic, only: [:upvote, :downvote, :show, :edit, :update, :destroy]
  before_action :set_user, only: [:upvote, :downvote]
  before_action :authenticate_user!, except: [:index, :show]
  # after_action
  # around_action

  def index
    @topics = get_topics
  end

  def published
    @topics = get_topics.published
    render "index"
  end

  def upvote
    @user.voted_up_on?(@topic) ? @topic.unliked_by(@user) : @topic.liked_by(@user)
    redirect_to @topic
  end

  def downvote
    @user.voted_down_on?(@topic) ? @topic.undisliked_by(@user) : @topic.downvote_from(@user)
    redirect_to @topic
  end

  # GET /topics/1
  def show
    @topic_answers = @topic.get_answers(params[:page])
    #@topic_answer  = @topic.topic_answers.build if params[:format] == "html"
    respond_to do |format|
      format.html do
        @topic_answer  = @topic.topic_answers.build
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
    @topic.build_picture unless @topic.picture.present?
  end

  # POST /topics
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path
    else
      render :new
    end
  end

  # PATCH/PUT /topics/1
  def update
    if @topic.update(topic_params)
      redirect_to @topic
    else
      render :edit
    end
  end

  # DELETE /topics/1
  def destroy
    @topic.destroy
    redirect_to topics_url
  end

  private
    def website_title
      super + " - sujets de discussion"
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end

    def set_user
      if User.any?
        @user = User.first
      else
        redirect_to profile_path
      end
    end

    def get_topics
      if params[:category_id].present?
        category = Category.find(params[:category_id])
        topics   = category.topics
      end

      topics ||= Topic

      topics.preload(:topic_answers).search(params[:search]).paginate(:page => params[:page], :per_page => 10)
      # eager_load
    end

    def topic_params
      params.require(:topic).permit(:title, :content, category_ids: [],
        picture_attributes: [:id, :name, :file])
    end

end
