class AddEmployeeRefToTimeRecord < ActiveRecord::Migration
  def change
    add_reference :time_records, :employee, index: true
  end
end
