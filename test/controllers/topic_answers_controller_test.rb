require 'test_helper'

class TopicAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic_answer = topic_answers(:one)
  end

  test "should get index" do
    get topic_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_topic_answer_url
    assert_response :success
  end

  test "should create topic_answer" do
    assert_difference('TopicAnswer.count') do
      post topic_answers_url, params: { topic_answer: { content: @topic_answer.content, published: @topic_answer.published, title: @topic_answer.title } }
    end

    assert_redirected_to topic_answer_url(TopicAnswer.last)
  end

  test "should show topic_answer" do
    get topic_answer_url(@topic_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic_answer_url(@topic_answer)
    assert_response :success
  end

  test "should update topic_answer" do
    patch topic_answer_url(@topic_answer), params: { topic_answer: { content: @topic_answer.content, published: @topic_answer.published, title: @topic_answer.title } }
    assert_redirected_to topic_answer_url(@topic_answer)
  end

  test "should destroy topic_answer" do
    assert_difference('TopicAnswer.count', -1) do
      delete topic_answer_url(@topic_answer)
    end

    assert_redirected_to topic_answers_url
  end
end
