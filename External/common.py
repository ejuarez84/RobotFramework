from robot.api import logger
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

@keyword("Conectarme al sistema remoto de creacion de helados")
def test_python():
    logger.console(u"Función expuesta desde módulo Python")
    return "Test"

def second_test_python():
    logger.console(u"Segunda función expouesta desde módulo Python")
    return "Test2"

@keyword("Lista productos de la web")
def lista_productos(class_name):
    selenium_lib = BuiltIn().get_library_instance("SeleniumLibrary")
    browser = selenium_lib._current_browser()
    lista = browser.find_element_by_class_name(class_name)
    productos = lista.find_elements_by_tag_name('article')
    for producto in productos:
        logger.console(producto)