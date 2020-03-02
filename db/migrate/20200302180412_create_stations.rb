class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :rl100
      t.string :osm_id
      t.st_point :geo_point, geographic: true

      t.timestamps
    end
  end
end
