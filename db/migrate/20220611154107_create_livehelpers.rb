class CreateLivehelpers < ActiveRecord::Migration[6.1]
  def change
    create_table :livehelpers do |t|

      t.timestamps
    end
  end
end
