module TopicAnswersHelper
  def topic_answer_form_url
    @topic_answer.new_record? ? topic_post_answer_path(@topic) : topic_answer_path(@topic_answer)
  end

  def back_to_topic_link
    link_to 'Retour au sujet', @topic_answer.topic
  end
end
