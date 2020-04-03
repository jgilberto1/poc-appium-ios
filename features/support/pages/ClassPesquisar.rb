class Pesquisar    
    include Appium::Http

    def inicial
        find_element(:name, "Trending").displayed?
    end
        
    def instagram
        find_element(:xpath, '//XCUIElementTypeSearchField[@name="Search"]').send_keys "instagram"
        find_element(:xpath, '(//XCUIElementTypeButton[@name="Search"])[2]').click
    end

    def respostainstagram
        find_element(:xpath, '//XCUIElementTypeStaticText[@name="Instagram"]').displayed?
    end

end