class StudentsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @student = Student.new
  end

  def create
  end

  def destroy
  end
end
