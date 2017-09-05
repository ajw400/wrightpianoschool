class Student < ApplicationRecord
  has_many :student_children, inverse_of: :student
  accepts_nested_attributes_for :student_children, reject_if: :all_blank, allow_destroy: :true
  # after_create :send_welcome_email

  def send_welcome_email
    StudentMailer.welcome(self).deliver_now
  end

end
