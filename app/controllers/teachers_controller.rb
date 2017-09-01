class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teachers = Teacher.order(:rank)
  end

  def new
    @teacher = Teacher.new
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def show
    @teacher = Teacher.find(params[:id])
    @message = Message.new
  end


  def create
    if current_user.email == "prestoassai@hotmail.com"
      teacher = Teacher.create!(teacher_params)
    else
      flash[:alert] = "you do not have authorization to create a teacher!"
    end
    redirect_to teachers_path
  end

  def update
    teacher = Teacher.find(params[:id])
    if current_user.email == teacher.email
      teacher.update(teacher_params)
    else
      flash[:alert] = "you do not have authorization to update this teacher!"
    end
    redirect_to teachers_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:photo, :first_name, :location, :last_name, :languages,
      :email, :phone, :address, :bio, :hour_fee, :in_home_fee,
      degrees_attributes: [:id, :description, :school, :year, :notes, :_destroy],
      paragraphs_attributes: [:id, :content, :_destroy])
  end
end
