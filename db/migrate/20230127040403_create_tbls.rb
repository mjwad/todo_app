class CreateTbls < ActiveRecord::Migration[7.0]
  def change
    create_table :tbls do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
