require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'


Given('user see emew logo') do
    logo = $driver.find_element(:xpath, '//*[@id="bt_header"]/div[1]/div[2]/div/div[1]/div/a/img').displayed?
    if logo == true
        log("Yes, displayed")
    end    
    sleep(5)  
end