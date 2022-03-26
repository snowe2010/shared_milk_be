class User < ApplicationRecord
  has_many :requests
  validates :name, presence: true
  validates :email,
            :format => { with: URI::MailTo::EMAIL_REGEXP },
            presence: true,
            uniqueness: true
  validates :phone, presence: true
  validates :bio, presence: true
  validates :location, presence: true

  enum active_status: {active: 0, inactive: 1}
  enum donor_status: {donor: 0, recipient: 1}
end
