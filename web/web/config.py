'''
	Parametros de configuración
'''
import os


class Config:
	# Clave secreta, necesaria para poder utilizar SQLAlchemy
    SECRET_KEY="f6f8af0c7693403bcb3ccc6a73349db8"
    # SQLAlchemy es un ORN (Object-Relational Mapper), es un toolkit que nos ayuda a trabajar con las tablas de la base de datos como si fueran objetos, de manera que cada tabla se mapea con una clase y cada columna con un campo de dicha clase. 
    ''' La forma de conectarse es la siguiente: 
    		1. Nombre del SGBD.
    		2. Nombre del controlador de la base de datos (en este caso PyMySQl, Flask poseé su propio controlador de DB pero me decidi por PyMySQL).
				* Estos se esciben de la siguiente manera (SGDB+ContoladorDB) = mysql+pymysql
			3. Después de :// poner el nombre usuario:contraseña (en caso de no tener contraseña solo poner el nombre de usuario)
			4. Después del @ poner el host (localhost funciona, sin embargo puede dar errores, asi que es mejor poner la dirección como tal)
			5. Después del host y dos puntos poner el puerto del SGDB.
			6. Después del slash poner el nombre de la base de datos.
    '''
    SQLALCHEMY_DATABASE_URI='mysql+pymysql://root@127.0.0.1:3306/repaux'
    '''
    	Para la recuperación de contraseña (solo funciona de forma local)
    '''
    MAIL_SERVER = 'smtp.googlemail.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    MAIL_USERNAME = os.environ.get('EMAIL_USER')
    MAIL_PASSWORD = os.environ.get('EMAIL_PASS')

    