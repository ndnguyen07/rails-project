class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :title
      t.string :tags
      t.string :description

      t.timestamps
    end
  end
end
