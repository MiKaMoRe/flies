# frozen_string_literal: true

module FeatureHelpers
  def sign_in(user)
    fill_in id: 'email_signin', with: user.email
    fill_in id: 'password_signin', with: user.password
    click_on id: 'popup-nav_signin'
  end
end
