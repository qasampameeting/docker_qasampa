Dado("que eu esteja na página do register") do
  @inicial_page = InicialPage.new
  @inicial_page.load
  @inicial_page.clicar_register
end
  
Quando("preencho os dados na tela") do |table|
  @register_page2 = RegisterPage2.new  
  @dados = table.rows_hash
  @register_page2.preencher_cadastro(@dados)
  @register_page2.clicar_em_submit
end

Entao("realizo o cadastro de um novo usuario") do
  @create_account_page = CreateAccountPage.new
  expect(@create_account_page).to have_text "Dear John Lennon,"
end
