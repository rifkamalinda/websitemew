Before do |scenario|
    options = Selenium::WebDriver::Chrome::Options.new
    #options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--start-maximized')
    $driver = Selenium::WebDriver.for :chrome, options: options 
    sleep(5)
end

After do |scenario|
    if scenario.failed?
        screenshot = $driver.save_screenshot("ss/Failed - #{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png")
        attach("ss/Failed - #{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png", "image/png")
    end
    $driver.quit
end