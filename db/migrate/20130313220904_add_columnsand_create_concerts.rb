class AddColumnsandCreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.date :concert_date
      t.integer :venue_id
      t.timestamps
    end
  end
end
