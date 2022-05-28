from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField
from wtforms.validators import DataRequired, Length


class FormTaxonomia(FlaskForm):
	orden = StringField(
		'Orden', 
		validators=[DataRequired()],
		render_kw={"placeholder": "Usar termino cientifico"})
	familia = StringField(
		'Familia', 
		validators=[DataRequired()],
		render_kw={"placeholder": "Usar termino cientifico"})
	genero = StringField(
		'Genero', 
		validators=[DataRequired()],
		render_kw={"placeholder": "Usar termino cientifico"})
	especie = StringField(
		'Especie', 
		validators=[DataRequired()],
		render_kw={"placeholder": "Usar termino cientifico"})
	subespecie = StringField(
		'Subespecie', 
		validators=[DataRequired()],
		render_kw={"placeholder": "Usar termino cientifico"})
	descripcion = TextAreaField(
		'Descripcion',
		validators=[DataRequired()],
		render_kw={"placeholder": "Datos como: tamaño, esperanza de vida, alimentación, lugares de origen"})
	tipo = StringField(
		'Tipo', 
		validators=[DataRequired()],
		render_kw={"placeholder": "Acuatica, Terrestre, Rastrero..."})
	apodo = TextAreaField(
		'Apodo', 
		validators=[DataRequired()],
		render_kw={"placeholder": "Nombres informales de la especie/subespecie"})
	grado_amenaza = StringField(
		'Grado de amenaza', 
		validators=[DataRequired()],
		render_kw={"placeholder": "5,...,1; entre más se acerque al 1, mas cerca del peligro de extinción"})
	enviar = SubmitField('Enviar')