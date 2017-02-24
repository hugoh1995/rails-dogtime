class CreateQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :quantities do |t|
      t.integer :number
      t.references :breed, foreign_key: true
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
