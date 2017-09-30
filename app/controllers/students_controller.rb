class StudentsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)
    flash[:notice] = "Application submitted!"
    StudentMailer.welcome(@student).deliver_now
    redirect_to root_path
  end

  def destroy
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :notes, :last_name, :email, :address,
      :city, :languages, :zip_code, :phone, :times, :in_home, :referral,
      student_children_attributes: [:id, :first_name, :last_name, :birthdate, :experience, :_destroy])
  end
end
