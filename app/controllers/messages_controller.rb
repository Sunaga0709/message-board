class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def index
    @pagy, @messages = pagy(Message.order(id: :desc), items: 10)
  end

  def show
  end

  def new
    @message = Message.new()
  end

  def create
    @message = Message.new(message_params)
    
    if @message.save
      flash[:success] = '保存成功'
      redirect_to messages_path
    else
      flash[:danger] = '保存失敗'
      render :new
    end
  end

  def edit
  end

  def update
    if @message.update(message_params)
      flash[:success] = '編集成功'
      redirect_to @message
    else
      flash[:danger] = '編集失敗'
      render :edit
    end
  end

  def destroy
    @message.destroy
    flash[:success] = '削除成功'
    redirect_to messages_url
  end

  private

  def message_params
    params.require(:message).permit(:title, :context)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
