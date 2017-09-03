class Message < ApplicationRecord
  after_create :send_message
  belongs_to :teacher

  def send_message
  end
end
