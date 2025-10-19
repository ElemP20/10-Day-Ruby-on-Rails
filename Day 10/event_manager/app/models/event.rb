class Event < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_many :registrations
  has_many :attendees, through: :registrations

  accepts_nested_attributes_for :activities, reject_if: :all_blank, allow_destroy: true

end
