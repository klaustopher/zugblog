class CreateTrainLines < ActiveRecord::Migration[6.0]
  def change
    create_table :train_lines do |t|
      t.string :name
      t.integer :vzg_number
      t.string :alt_names, array: true
      t.string :osm_id
      t.multi_line_string :line, geographic: true

      t.timestamps
    end
  end
end
