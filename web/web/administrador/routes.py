from flask import render_template, Blueprint, Flask, request, flash, redirect, url_for
from web.models import Usuario, Publicacion, Taxonomia, PeticionTaxonomia
from web import db 
from web.administrador.forms import FormTaxonomia

administrador = Blueprint('administrador', __name__)


@administrador.route('/Admin')
def estadistica():
	usuarios = Usuario.query.order_by(Usuario.id.asc())
	publicaciones = Publicacion.query.order_by(Publicacion.id.asc())
	taxonomia = Taxonomia.query.order_by(Taxonomia.id.asc())
	peticiones = PeticionTaxonomia.query.order_by(PeticionTaxonomia.id.asc())
	form = FormTaxonomia()
	return render_template('administrador.html', title='Admin', form=form, usuarios=usuarios, publicaciones=publicaciones, taxonomia=taxonomia, peticiones=peticiones)


@administrador.route('/Admin', methods=['GET', 'POST'])
def actualizar_taxonomia():
	form = FormTaxonomia()
	if form.validate_on_submit():
		taxonomia = Taxonomia(
				dominio='Eukaryota',
				reino='Animalia',
				subreino='Eumetazoa',
				superfilo='Deuterostomia',
				filo='Chordata',
				subfilo='Vertebrata',
				superclase='Tetrapoda',
				clase='Reptilia',
				subclase='Diapsida',
				orden=form.orden.data,
				familia=form.familia.data,
				genero=form.genero.data,
				especie=form.especie.data,
				subespecie=form.subespecie.data,
				descripcion=form.descripcion.data,
				tipo=form.tipo.data,
				apodo=form.apodo.data,
				grado_amenaza=form.grado_amenaza.data
			)
		db.session.add(taxonomia)
		db.session.commit()
		return redirect(url_for('administrador.estadistica'))
	return render_template('administrador.html', form=form)


@administrador.route('/Admin/<int:id_usuario>/EliminarUusario', methods=['POST'])
def eliminar_usuario(id_usuario):
	usuario = Usuario.query.get_or_404(id_usuario)
	db.session.delete(usuario)
	db.session.commit()
	return redirect(url_for('administrador.estadistica'))


@administrador.route('/Admin/<int:id_publicacion>/EliminarPublicacion', methods=['POST'])
def eliminar_publicacion(id_publicacion):
	publicacion = Publicacion.query.get_or_404(id_publicacion)
	db.session.delete(publicacion)
	db.session.commit()
	return redirect(url_for('administrador.estadistica'))


@administrador.route('/Admin/<int:id_peticion>/eliminarPeticion', methods=['POST'])
def eliminar_peticion(id_peticion):
	peticion = PeticionTaxonomia.query.get_or_404(id_peticion)
	db.session.delete(peticion)
	db.session.commit()
	return redirect(url_for('administrador.estadistica'))