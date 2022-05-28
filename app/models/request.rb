class Request < ApplicationRecord
  belongs_to :commuter, class_name: "User"
  belongs_to :helper, class_name: "User"
  has_many :reviews

  # has_one :chatroom
end
