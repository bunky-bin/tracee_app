class Request < ApplicationRecord
  belongs_to :commuter, class_name: "User", optional: true
  belongs_to :helper, class_name: "User", optional: true
  has_many :reviews

  #attr_reader :request

  # has_one :chatroom
end
