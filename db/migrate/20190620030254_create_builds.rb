class CreateBuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :builds do |t|
      t.string :runes
      t.string :items
      t.string :description

      t.timestamps
    end
  end
end
