class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :received_requests, class_name: "Request", foreign_key: "helper_id"
  has_many :requests, foreign_key: "commuter_id"
  has_one_attached :photo
  has_many :reviews, foreign_key: "helper_id"
  attr_reader :helper_id, :commuter_id

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
