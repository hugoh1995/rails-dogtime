class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.datetime :date
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
