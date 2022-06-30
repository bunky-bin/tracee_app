class Review < ApplicationRecord
  belongs_to :request
  belongs_to :helper, class_name: "User", optional: true
  validates :rating, numericality: true
  validates :description, length: { minimum: 2 }

  def reviewstars
    (1..rating).to_a
  end
end

# review.each do |i| puts i end

# ADVISED MODEL NEEDS :
# content:string
# rating:integer
# user:references
