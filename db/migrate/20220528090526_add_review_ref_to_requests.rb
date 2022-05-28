class AddReviewRefToRequests < ActiveRecord::Migration[6.1]
  def change
    add_reference :requests, :reviews, null: false, foreign_key: true
  end
end
