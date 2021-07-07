require_relative '../support/screen_action.rb'
require_relative '../support/hook.rb'


Given('user see emew logo') do
    logo = $driver.find_element(:xpath, '//*[@id="__next"]/div/div[2]/div[2]/div/div[1]/div/div/div/div/div/div/input').displayed?
    if logo == true
        log("Yes, displayed")
    end    
    sleep(5)  
end