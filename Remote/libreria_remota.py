from robot.api import logger


class SistemaBancario:
    def __init__(self):
        self.id_banco = "BA-900"

    def abrir_cuenta(self):
        logger.console(u"Abrir cuenta")

    def cerrar_cuenta(self):
        logger.console(u"Cerrar cuenta")

    def obtener_saldo(self):
        logger.console(u"Obtener saldo")
        return 900
