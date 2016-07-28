module Features
  module SessionHelpers
    def sign_up_with(email, password, password_confirmation)
      visit signup_path
      fill_in 'user[email]', with: email
      fill_in 'user[password]', with: password
      fill_in 'user[password_confirmation]', with: password_confirmation
      click_on 'Sign Up'
    end

    def sign_in_with(email, password)
      visit login_path
      fill_in 'session[email]', with: email
      fill_in 'session[password]', with: password
      click_on 'Sign In'
    end
  end
end
