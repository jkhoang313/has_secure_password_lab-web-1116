class User < ActiveRecord::Base
  validate :password_matches

  def password_matches
    errors.add(:passwords, "don't match") unless password == password_confirmation || password_confirmation == nil
  end

  def authenticate(password)
    self if password == self.password
  end
end
