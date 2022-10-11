class CreateOverwatchCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :overwatch_characters do |t|
      t.string :name
      t.integer :difficulty
      t.string :image
      t.references :overwatch_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
