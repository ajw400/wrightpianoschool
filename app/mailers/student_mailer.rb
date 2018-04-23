class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.welcome.subject
  #
  # def message(msg)
  #   @message = msg

  #   mail(to: "info@wrightpianoschool.com", subject: "New message!")
  # end
  def welcome(student)
    @student = student

    mail(to: "#{@student.email}, info@wrightpianoschool.com", subject: 'Welcome to Wright Piano School!', from: 'info@wrightpianoschool.com')
  end
end
