def sign_up(email, password, pwd_conf)
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,    with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: pwd_conf
  click_button 'Sign up'
end