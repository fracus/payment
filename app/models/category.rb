class Category < ActiveRecord::Base
	has_many :time_records
end
