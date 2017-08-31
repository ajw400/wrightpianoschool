class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def show
    @teacher = Teacher.find(params[:id])
  end


  def create
    teacher = Teacher.create!(teacher_params)
  end

  def update
    teacher = Teacher.find(params[:id])
    teacher.update(teacher_params)
  end

  private

  def teacher_params
    params.require(:teacher).permit(:photo, :first_name, :location, :last_name, :languages,
      :email, :phone, :address, :bio, :hour_fee, :in_home_fee,
      degrees_attributes: [:id, :description, :school, :year, :notes, :_destroy],
      paragraphs_attributes: [:id, :content, :_destroy])
  end
end
