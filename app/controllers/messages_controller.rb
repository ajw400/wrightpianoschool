class MessagesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    msg = Message.create!(message_params)
    p msg
    StudentMailer.contact(msg).deliver_now
    flash[:notice] = "Message Sent!"
    redirect_to teacher_path(Teacher.find(message_params[:teacher_id]))
  end

  def message_params
    params.require(:message).permit(:content, :teacher_id, :email, :phone)
  end
end
