class TopicsController < ApplicationController
  before_action :set_topic, only: [:edit, :show]

  def index
    @topics = Topic.all.order("created_at DESC")
  end

  def new
    @topic = Topic.new
    @categories = Category.all
  end

  def create
    @topic = Topic.new(topic_params)
    category_ids = params[:topic][:category_ids]
    @message = params[:topic][:message]

    if category_ids.present? and @message.present?
      @topic.save!
      
      category_ids.each do |category_id|
        @topic_category = TopicCategory.new(category_id: category_id, topic_id: @topic.id)
      end
      first_message_create

    else
      redirect_to action: :new
    end

  end


  def first_message_create
    @first_message = Message.new(text: @message, user_id: current_user.id, topic_id: @topic.id)
    @first_message.save!
  end


  def show
    @messages = Message.where(topic_id: @topic.id)
    @message = Message.new
  end



  private
  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title, category_ids: [])
  end

end
