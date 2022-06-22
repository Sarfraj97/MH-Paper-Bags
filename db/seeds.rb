# frozen_string_literal: true

# Create Roles
admin = Role.find_or_create_by(name: 'admin')
user = Role.find_or_create_by(name: 'user')


# Create Users
User.find_or_initialize_by(email: 'admin@yopmail.com').tap do |u|
  u.first_name = 'Admin'
  u.last_name = 'admin'
  u.gender = true
  u.email = 'admin@yopmail.com'
  u.password = 123456
  u.phone = 9576543210
  u.add_role :admin
  u.save
end

User.find_or_initialize_by(email: 'demo_user@yopmail.com').tap do |u|
  u.first_name = 'User'
  u.last_name = 'demo'
  u.gender = true
  u.email = 'user@yopmail.com'
  u.password = 123456
  u.add_role :user
  u.phone = 9876543210
  u.save
end

