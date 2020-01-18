class Task < ApplicationRecord
  belongs_to :user_id, optional: true

  validates :title, presence: true
  validates :description, presence: true

end
