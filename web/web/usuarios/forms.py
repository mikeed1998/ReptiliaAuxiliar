from flask_wtf import FlaskForm
from flask_wtf.file import FileField, FileAllowed
from wtforms import StringField, PasswordField, SubmitField, BooleanField
from wtforms.validators import DataRequired, Length, Email, EqualTo, ValidationError, Optional
from flask_login import current_user
from web.models import Usuario


class FormularioRegistro(FlaskForm):
    nombre_usuario = StringField('Nombre de usuario', validators=[DataRequired(), Length(min=2, max=20)])
    email = StringField('Correo electronico', validators=[DataRequired(), Email()])
    password = PasswordField('Contraseña', validators=[DataRequired()])
    confirm_password = PasswordField('Ingresa de nuevo la contraseña', validators=[DataRequired(), EqualTo('password')])
    enviar = SubmitField('Registrarse')

    def validar_usuario(self, nombre_usuario):
        user = User.query.filter_by(username=nombre_usuario.data).first()
        if user:
            raise ValidationError('El nombre de usuario que ingresaste ya existe. Utiliza otro.')

    def validar_email(self, email):
        user = User.query.filter_by(email=email.data).first()
        if user:
            raise ValidationError('El nombre de usuario que ingresaste ya existe. Utiliza otro.')



class FormularioLogin(FlaskForm):
    email = StringField('Correo electronico', validators=[DataRequired(), Email()])
    password = PasswordField('Contraseña', validators=[DataRequired()])
    remember = BooleanField('Recuerdame')
    enviar = SubmitField('Ingresar')



class FormularioActulizarCuenta(FlaskForm):
    nombre_usuario = StringField('Actualizar nombre de usuario', validators=(Optional(), Length(min=2, max=20)))
    foto_perfil = FileField('Actualizar foto de perfil', validators=[FileAllowed(['jpg', 'png'])])
    enviar = SubmitField('Actualizar')

    def validar_usuario(self, nombre_usuario):
        if username.data != current_user.nombre_usuario:
            user = User.query.filter_by(nombre_usuario=nombre_usuario.data).first()
            if user:
                raise ValidationError('El nombre de usuario que ingresaste ya existe. Utiliza otro.')


class FormularioSolicitudRecuperarPassword(FlaskForm):
    email = StringField('Correo electronico', validators=[DataRequired(), Email()])
    enviar = SubmitField('Recuperar contraseña')

    def validar_email(self, email):
        user = User.query.filter_by(email=email.data).first()
        if user is None:
            raise ValidationError('No existe una cuenta con ese correo electronico. Debes registrarte primero.')


class FormularioRecuperarPassword(FlaskForm):
    password = PasswordField('contraseña', validators=[DataRequired()])
    confirm_password = PasswordField('Ingresa de nuevo la contraseña', validators=[DataRequired(), EqualTo('password')])
    enviar = SubmitField('Restablecer contraseña')

