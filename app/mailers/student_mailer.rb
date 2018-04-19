class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.welcome.subject
  #
  def message(msg)
    @message = msg

    mail(to: "info@wrightpianoschool.com", subject: "New message!")
  end
  def welcome(student)
    @student = student

    mail(to: "#{@student.email}, wrightpianoschool@gmail.com", subject: 'Welcome to Wright Piano School!')
  end
end
