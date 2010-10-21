class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.date :data
      t.string :godziny
      t.text :plan
      t.text :realizacja
      t.text :uwagi

      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
