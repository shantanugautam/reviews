class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :latitude
      t.string :longitude
      t.time :closed
      t.string :offers
      t.string :address
      t.string :images

      t.timestamps
    end
  end
end
