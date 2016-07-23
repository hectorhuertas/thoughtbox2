module Features
  module SessionHelpers
    def sign_up_with(email, password, password_confirmation)
      visit signup_path
      fill_in 'user[email]', with: email
      fill_in 'user[password]', with: password
      fill_in 'user[password_confirmation]', with: password_confirmation
      click_on 'Sign Up'
    end
  end
end
