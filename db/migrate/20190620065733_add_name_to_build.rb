class AddNameToBuild < ActiveRecord::Migration[5.2]
  def change
    add_column :builds, :name, :string
  end
end
