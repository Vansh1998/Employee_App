class CreateEmployeeDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_details do |t|
      t.string :first_name
      t.string :last_name
      t.integer :emp_id
      t.string :emp_Designation
      t.string :emp_mail_id

      t.timestamps
    end
  end
end
