# Modulo básico de Flask
from flask import Flask
# Modulo para importar el ORM 
from flask_sqlalchemy import SQLAlchemy
# Modulo que nos permitirá hashear las contraseñas utilizando el algoritmo bcrypt
from flask_bcrypt import Bcrypt
# Modulo que nos permitirá gestionar las sesiones de los usuarios
from flask_login import LoginManager
# Modulo que nos permitirá trabajar con correos electrónicos
from flask_mail import Mail
# Importamos la configuración del archivo config.py
from web.config import Config
# Importamos el controlador de la base de datos
import pymysql


# Inicializamos
db = SQLAlchemy()   
bcrypt = Bcrypt()   
login_manager = LoginManager()
login_manager.login_view = 'users.login'
login_manager.login_message_category = 'info'
mail = Mail()


def create_app(config_class=Config):    # Le pasamos la configuración como parámetro
    app = Flask(__name__)               # Define el espacio de nombres en el que se está ejecutando
    app.config.from_object(Config)      # Metemos toda la configuración 

    db.init_app(app)
    bcrypt.init_app(app)
    login_manager.init_app(app)
    mail.init_app(app)

    '''
        Creando los Blueprints 
        "Un Blueprint define una colección de vistas, plantillas, recursos estáticos, modelos, etc. que pueden ser utilizados por la aplicación."
    '''

    # Basandonos en el patrón de diseño MVC (Modelo Vista Controlador) usar los Blueprints nos permitirá organizar los controladores (o las rutas en Flask) las cuales cada una apunta a sus repectivas vistas (páginas HTML) y en caso de que los tengan, a sus modelos (clases y objetos que definen la logica de algunas tareas por ejemplo: formularios, base de datos, etc).
    from web.usuarios.routes import usuarios
    from web.publicaciones_modelo.routes import publicaciones_modelo
    from web.main.routes import main
    from web.errores.handlers import errores
    from web.general.routes import general
    from web.busqueda_inteligente.routes import busqueda_inteligente
    from web.legislacion.routes import legislacion
    from web.publicaciones.routes import publicaciones
    from web.administrador.routes import administrador


    # Registramos los Blueprints, cada vez que llamemos a una ruta @route ya estarán organizadas por sus respectivos nombres.
    app.register_blueprint(usuarios)
    app.register_blueprint(publicaciones_modelo)
    app.register_blueprint(main)
    app.register_blueprint(errores)
    app.register_blueprint(general)
    app.register_blueprint(busqueda_inteligente)
    app.register_blueprint(legislacion)
    app.register_blueprint(publicaciones)
    app.register_blueprint(administrador)

    return app
