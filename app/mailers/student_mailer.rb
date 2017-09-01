class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.welcome.subject
  #
  def welcome(student)
    @student = student

    mail(to: "#{@student.email}, wrightpianoschool@gmail.com", subject: 'Welcome to Wright Piano School!')
  end
end
