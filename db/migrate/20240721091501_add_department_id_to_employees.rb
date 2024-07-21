class AddDepartmentIdToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :department_id, :integer
  end
end
