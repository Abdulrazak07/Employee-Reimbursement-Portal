# Clear existing data
Bill.destroy_all
Employee.destroy_all
Department.destroy_all

# Create Departments
departments = [
  { name: 'Engineering' },
  { name: 'Marketing' },
  { name: 'Finance' },
  { name: 'Human Resources' }
]

departments.each do |department_data|
  Department.create(department_data)
end

# Create Employees
employees = [
  { first_name: 'Abdul', last_name: 'Razak', email: 'abdulrazak@gmail.com', designation: 'Software Engineer', department: Department.find_by(name: 'Engineering') },
  { first_name: 'Priyanka', last_name: 'Chopra', email: 'priyanka123@gmail.com', designation: 'Marketing Manager', department: Department.find_by(name: 'Marketing') },
  { first_name: 'Celestina', last_name: 'Jothi', email: 'celetinajothin@email.com', designation: 'Accountant', department: Department.find_by(name: 'Finance') },
  { first_name: 'Riswan', last_name: 'Ahamed', email: 'riswann@example.com', designation: 'HR Specialist', department: Department.find_by(name: 'Human Resources') }
]

employees.each do |employee_data|
  Employee.create(employee_data)
end

# Create Bills
bills = [
  { amount: 100.50, bill_type: 'food', employee: Employee.find_by(email: 'john.doe@example.com') },
  { amount: 200.75, bill_type: 'travel', employee: Employee.find_by(email: 'jane.smith@example.com') },
  { amount: 150.00, bill_type: 'food', employee: Employee.find_by(email: 'emily.johnson@example.com') },
  { amount: 250.25, bill_type: 'others', employee: Employee.find_by(email: 'michael.brown@example.com') }
]

bills.each do |bill_data|
  Bill.create(bill_data)
end

puts "Seed data created successfully!"
