require "appium_lib"

def caps
{ caps: { 
    platformName: "iOS",
    platformVersion: "13.0",
    deviceName: "iPhone 11 Pro Max",
    automationName: "XCUITest",
    app: (File.join(File.dirname(__FILE__),"AppStoreSearch.app"))
}
}
end


Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

