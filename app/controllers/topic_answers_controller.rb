class TopicAnswersController < ApplicationController
  before_action :set_topic_answer, only: [:show, :edit, :update, :destroy]


  # GET /topic_answers/1
  # GET /topic_answers/1.json
  def show
  end

  # GET /topic_answers/1/edit
  def edit
  end

  # POST /topics/:topic_id/post-answer
  def create
    @topic        = Topic.find(params[:topic_id])
    @topic_answer = @topic.topic_answers.build(topic_answer_params)

    respond_to do |format|
      if @topic_answer.save
        format.html { redirect_to @topic, notice: 'Topic answer was successfully created.' }
        format.json { render :show, status: :created, location: @topic_answer }
      else
        @topic_answers = @topic.get_answers(params[:page])
        format.html { render "topics/show" }
        format.json { render json: @topic_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic_answers/1
  # PATCH/PUT /topic_answers/1.json
  def update
    respond_to do |format|
      if @topic_answer.update(topic_answer_params)
        format.html { redirect_to @topic_answer, notice: 'Topic answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic_answer }
      else
        format.html { render :edit }
        format.json { render json: @topic_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic_answers/1
  # DELETE /topic_answers/1.json
  def destroy
    @topic_answer.destroy
    respond_to do |format|
      format.html { redirect_to topics_url, notice: 'Topic answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic_answer
      @topic_answer = TopicAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_answer_params
      params.require(:topic_answer).permit(:title, :content, :published)
    end
end
