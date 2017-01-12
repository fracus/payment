class AddCategoryRefToTimeRecord < ActiveRecord::Migration
  def change
    add_reference :time_records, :category, index: true
  end
end
