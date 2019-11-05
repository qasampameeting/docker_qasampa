class RegisterPage2 < SitePrism::Page
  set_url '/mercuryregister.php'
  element :campo_firstname, 'input[name*="firstName"]'
  element :campo_lastname, 'input[name*="lastName"]'
  element :campo_phone, 'input[name*="phone"]'
  element :campo_email, '#userName'
  element :campo_address1, 'input[name="address1"]'
  element :campo_address2, 'input[name="address2"]'
  element :campo_city, 'input[name="city"]'
  element :campo_state, 'input[name="state"]'
  element :campo_postalCode, 'input[name="postalCode"]'
  element :campo_country, 'select[name="country"]'
  element :campo_username, '#email' 
  element :campo_password, 'input[name="password"]'
  element :campo_confirmed, 'input[name="confirmPassword"]'
  element :submit, 'input[name="register"]'
  
  def preencher_cadastro(dados)
    campo_firstname.set dados[:firstname]
    campo_lastname.set dados[:lastname]
    campo_phone.set dados[:phone]
    campo_email.set dados[:email]
    campo_address1.set dados[:address1]
    campo_city.set dados[:city]
    campo_state.set dados[:state]
    campo_postalCode.set dados[:postalcod]
    campo_country.select dados[:country]
    campo_username.set dados[:username]
    campo_password.set dados[:password]
    campo_confirmed.set dados[:confirm]
  end
  
  def clicar_em_submit
    submit.click
  end
end