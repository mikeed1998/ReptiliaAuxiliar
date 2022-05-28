import os
import secrets
from PIL import Image
from flask import url_for, current_app
from flask_mail import Message
from web import mail


def guardar_foto(form_picture):
    random_hex = secrets.token_hex(8)
    _, f_ext = os.path.splitext(form_picture.filename)
    picture_fn = random_hex + f_ext
    picture_path = os.path.join(current_app.root_path, 'static/profile_pics', picture_fn)

    output_size = (125, 125)
    i = Image.open(form_picture)
    i.thumbnail(output_size)
    i.save(picture_path)

    return picture_fn


def enviar_correo_recuperacion(usuario):
    token = usuario.get_reset_token()
    msg = Message('Solicitud de restablecimiento de contraseña',
                  sender='noreply@demo.com',
                  recipients=[usuario.email])
    msg.body = f'''
        Para restablecer su contraseña, visite el siguiente enlace: 
        { url_for('usuarios.reset_token', token=token, _external=True)}
        Si no realizó esta solicitud, simplemente ignore este correo electrónico y no se realizarán cambios.
    '''
    mail.send(msg)

