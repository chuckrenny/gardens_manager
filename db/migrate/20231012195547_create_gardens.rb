class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.integer :species
      t.boolean :watered

      t.timestamps
    end
  end
end
