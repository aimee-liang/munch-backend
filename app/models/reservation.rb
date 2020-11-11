class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant


  validates :datetime, uniqueness: { scope: [:restaurant, :user], message: "already made!" }

  validate :datetime_cannot_be_in_the_past

  def datetime_cannot_be_in_the_past
    if datetime.present? && datetime < Date.today
      errors.add(:datetime, "can't be in the past!")
    end
  end    




end

