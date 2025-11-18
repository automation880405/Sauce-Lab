from selenium import webdriver
from selenium.webdriver.chrome.options import Options


class ChromeLibrary:

    def create_custom_driver(self):
        options = Options()

        options.add_argument("--incognito")  # This REMOVES your popup 100%

        driver = webdriver.Chrome(options=options)
        driver.maximize_window()
        return driver



