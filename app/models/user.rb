#email:string
#password_digest: string

#password:string virtual
#password_confirmation: string virtual
class User < ApplicationRecord
    has_secure_password #a method from rails, it will hash the password using bcrypt and store it in password_digest

    validates_presence_of :email,  :message => "cannot be null"
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP ##provided by rails
end
