class MessagesController < ApplicationController
  def create
    Message.create!(message_params)
    flash[:notice] = "Message Sent!"
    redirect_to teacher_path(Teacher.find(message_params[:teacher_id]))
  end

  def message_params
    params.require(:message).permit(:content, :teacher_id)
  end
end
