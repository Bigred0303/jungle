class User < ApplicationRecord
end
class User < ApplicationRecord
    has_secure_password
  
    # Validations
    validates :email, presence: true, uniqueness: true
    validates :first_name, :last_name, presence: true
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true
    validates :password_confirmation, presence: true
  end