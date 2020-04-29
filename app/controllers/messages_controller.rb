class MessagesController < ApplicationController
  before_action :set_topic, only: [:create]

  def create
    @message = Message.new(message_params)
    @message.save!
    redirect_to "/topics/#{@topic.id}"
  end


  private
  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id, topic_id: @topic.id)
  end

end
