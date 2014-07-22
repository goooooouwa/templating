json.array!(@employees) do |employee|
  json.extract! employee, :id, :active, :first_name, :last_name, :email, :employment_type_id, :employee_role_id, :state_id, :office_id, :department_id, :phone, :mobile, :external_id
  json.url employee_url(employee, format: :json)
end
