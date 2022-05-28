from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField
from wtforms.validators import DataRequired


class FormularioPublicacion(FlaskForm):
    titulo = StringField('Titulo', validators=[DataRequired()])
    contenido = TextAreaField('Contenido de la publicación', validators=[DataRequired()])
    enviar = SubmitField('Publicar')
    