class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.welcome.subject
  #
  def contact(message)
    @message = message
    mail(to: "info@wrightpianoschool.com", subject: "New message!", from: 'info@wrightpianoschool.com')
  end

  def welcome(student)
    @student = student
    mail(to: "#{@student.email}, info@wrightpianoschool.com", subject: 'Welcome to Wright Piano School!', from: 'info@wrightpianoschool.com')
  end
end
