class Participant < ApplicationRecord
  belongs_to :event

  validates :name, :email, presence: true
end
