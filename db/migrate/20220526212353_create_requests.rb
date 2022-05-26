class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :accepted_time
      t.string :location
      t.bigint :helper_id
      t.bigint :commuter_id
      t.references :users, null: false, foreign_key: true
      t.references :reviews, null: false, foreign_key: true

      t.timestamps
    end
  end
end
