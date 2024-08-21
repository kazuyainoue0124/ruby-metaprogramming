require 'active_model'

class User
  include ActiveModel::Validations

  attr_accessor :password

  validate do
    errors.add(:password, "Don't let dad choose the password") if password == '1234'
  end
end

user = User.new
user.password = '12345'
user.valid? # => true

user.password = '1234'
user.valid? # => false
