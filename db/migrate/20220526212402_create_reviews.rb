class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    
    create_table :reviews do |t|
      t.integer :rating
      t.string :description
      t.bigint :request_id
      t.references :requests, null: false, foreign_key: true

      t.timestamps
    end


  end
end
