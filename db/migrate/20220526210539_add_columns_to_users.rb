class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float
    add_column :users, :availability, :boolean
  end
end
