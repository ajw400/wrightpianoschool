class StudentsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if verify_recaptcha(model: @student) && @student.save && (@student.first_name != @student.last_name)
      flash[:notice] = "Application submitted!"
      StudentMailer.welcome(@student).deliver_now
    else
      flash[:alert] = "Something went wrong! Please contact us at info@wrightpianoschool.com"
    end
    redirect_to root_path(signup: "true")
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
