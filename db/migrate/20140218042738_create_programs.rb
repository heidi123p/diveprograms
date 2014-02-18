class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :program_description
      t.string :minimum_level
      t.integer :cost
      t.integer :minimum_length
      t.string :website
      t.string :gear
      t.boolean :accomodation_included
      t.integer :shop_id

      t.timestamps
    end
  end
end
