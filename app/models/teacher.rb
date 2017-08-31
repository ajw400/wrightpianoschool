class Teacher < ApplicationRecord
  has_attachment :photo
  has_many :paragraphs, inverse_of: :teacher
  accepts_nested_attributes_for :paragraphs, reject_if: :all_blank, allow_destroy: :true
  has_many :degrees, inverse_of: :teacher
  accepts_nested_attributes_for :degrees, reject_if: :all_blank, allow_destroy: :true
end
