class AddDescriptionToOverwatchCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :overwatch_characters, :description, :string
  end
end
