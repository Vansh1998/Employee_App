json.extract! employee_detail, :id, :first_name, :last_name, :emp_id, :emp_Designation, :emp_mail_id, :created_at, :updated_at
json.url employee_detail_url(employee_detail, format: :json)
