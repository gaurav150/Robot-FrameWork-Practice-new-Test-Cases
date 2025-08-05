# # # This is a sample Python script.
# #
# # # Press ⌃R to execute it or replace it with your code.
# # # Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.
# #
# #
# # def print_hi(name):
# #     # Use a breakpoint in the code line below to debug your script.
# #     print(f'Hi, {name}')  # Press ⌘F8 to toggle the breakpoint.
# #
# # def suma(*pos,**sun):
# #     print(pos)
# #     print(sun)
# #
# #
# # # pip install turtle
# # import turtle
# # colors = ['red', 'blue', 'green', 'yellow']
# # t = turtle.Turtle()
# # for i in range(100):
# #     t.color(colors[i % 4])
# #     t.forward(i)
# #     t.left(91)
# # turtle.done()
# #
# #
# # # Press the green button in the gutter to run the script.
# # if __name__ == '__main__':
# #     print_hi('PyCharm')
# #     suma(1,2,b=1,c=2)
# #
# # # See PyCharm help at https://www.jetbrains.com/help/pycharm/
import time
#
# from selenium import webdriver
# from selenium.webdriver.common.by import By
#
# driver = webdriver.Chrome()
# driver.get("https://practice.automationtesting.in/")
# elem = driver.find_element(By.XPATH,"//*[name()='path' and contains(@d,'m256-200-5')]")
# driver.execute_script("arguments[0].scrollIntoView(true);",elem
# )
# elem.click()
# time.sleep(60)
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions

driver = webdriver.Chrome()
driver.get("https://practice.automationtesting.in/")
time.sleep(3)
WebDriverWait(driver, 30).until(
    expected_conditions.presence_of_element_located((By.XPATH, "//*[name()='path' and contains(@d, 'm256')]"))
)

svg_path = driver.find_element(By.XPATH, "//*[name()='path' and contains(@d, 'm256')]")
time.sleep(30)
svg_path.click()
print("eke")
time.sleep(30)
