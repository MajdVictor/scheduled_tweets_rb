#email:string
#password_digest: string

#password:string virtual
#password_confirmation: string virtual
class User < ApplicationRecord
    has_secure_password #a method from rails, it will hash the password using bcrypt and store it in password_digest

    validates :email, presence: true
end
