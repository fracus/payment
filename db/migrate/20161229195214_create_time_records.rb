class CreateTimeRecords < ActiveRecord::Migration
  def change
    create_table :time_records do |t|
      t.date :date
      t.float :total_hs
      t.float :price_hs

      t.timestamps
    end
  end
end
