class Event < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy

  validates :title, :maximum_amount, presence: true
end
