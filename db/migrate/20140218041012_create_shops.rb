class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :email
      t.string :main_location

      t.timestamps
    end
  end
end
