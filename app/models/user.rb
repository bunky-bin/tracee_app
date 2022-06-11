class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :received_requests, class_name: "Request", foreign_key: "helper_id"
  has_many :requests, foreign_key: "commuter_id"
  has_many :reviews
  has_one_attached :photo
  attr_reader :helper_id, :commuter_id
end
