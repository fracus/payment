module ApplicationHelper
  def employee_options
    Employee.pluck(:last_name,:first_name, :id)
  end
  def category_options
    Category.pluck(:name, :id)
  end
end
