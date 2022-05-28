class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :accepted_time
      t.string :location
      t.references :commuter, index: true, foreign_key: { to_table: :users }
      t.references :helper, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
