class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    teacher = Teacher.new(teacher_params)
  end

  def update
    teacher = Teacher.find(params[:id])
    teacher.update(teacher_params)
  end

  private

  def teacher_params
    params.require(:teacher).permit(:photo, :first_name, :last_name, :email, :phone, :address, :bio, :hour_fee, :in_home_fee)
  end
end
