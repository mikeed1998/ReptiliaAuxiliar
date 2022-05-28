from flask import render_template, Blueprint, Flask, request, flash, redirect, url_for
from web import db 
from web.models import Taxonomia, PeticionTaxonomia
from web.general.forms import FormPeticionTaxonomia

general = Blueprint('general', __name__)


@general.route('/general', methods=['GET', 'POST'], defaults={"page": 1}) 
@general.route('/general<int:page>', methods=['GET', 'POST'])
def generalApartado(page):
	page = page
	pages = 10
	taxonomia = Taxonomia.query.order_by(Taxonomia.id.asc()).paginate(page,pages,error_out=False)  #desc()
	if request.method == 'POST' and 'tag' in request.form:
		tag = request.form["tag"]
		search = "%{}%".format(tag)
		taxonomia = Taxonomia.query.filter( (Taxonomia.subespecie.like(search) | Taxonomia.especie.like(search)) ).paginate(per_page=pages, error_out=False) # LIKE: query.filter(User.name.like('%ednalan%'))
		return render_template('general.html', taxonomia=taxonomia, tag=tag)
	return render_template('general.html', taxonomia=taxonomia)


@general.route('/peticion_taxonomia', methods=['GET', 'POST'])
def peticion_taxonomia():
	form = FormPeticionTaxonomia()
	if form.validate_on_submit():
		peticion = PeticionTaxonomia(
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
				pais=form.pais.data,
				apodo=form.apodo.data,
				grado_amenaza=form.grado_amenaza.data
			)
		db.session.add(peticion)
		db.session.commit()
		flash('Se ha enviado una petición al administrador para validar los datos ingresados', 'warning')
		return redirect(url_for('general.generalApartado'))
	return render_template('peticion.html', title='Petición', form=form)