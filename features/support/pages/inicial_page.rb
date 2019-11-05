class InicialPage < SitePrism::Page
  set_url '/mercurywelcome.php'
  element :btn_signon, 'a[href*="mercurysignon.php"]'
  element :btn_register, 'td[class*="mouseOut"] > a[href*="mercuryregister.php"]'
  
  def clicar_signon
    btn_signon.click
  end
  
  def clicar_register
    btn_register.click
  end
end