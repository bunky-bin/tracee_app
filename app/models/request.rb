class Request < ApplicationRecord
  has_many :reviews
  belongs_to :commuter, class_name: "User", optional: true
  belongs_to :helper, class_name: "User", optional: true
  # has_one :chatroom
end
