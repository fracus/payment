class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.float :price_hs
      t.timestamps
    end
  end
end
