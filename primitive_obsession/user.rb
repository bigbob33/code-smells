# frozen_string_literal: true

class User
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  VALID_PASSWORD_REGEX = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/.freeze

  def authenticate(email, password)
    return unless email_valid?
    return unless password_valid?

    # other validations
    # ...

    # logic for authentication
    # ...
  end

  # other public methods ...

  private

  def email_valid?(email)
    return false if email.nil?

    VALID_EMAIL_REGEX.match?(email)
  end

  def password_valid?(password)
    return false if password.nil?

    VALID_PASSWORD_REGEX.match?(password)
  end

  # other private methods
end
