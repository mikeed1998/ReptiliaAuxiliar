from flask import (render_template, url_for, flash,
                   redirect, request, abort, Blueprint)
from flask_login import current_user, login_required
from web import db
from web.models import Publicacion
from web.publicaciones_modelo.forms import FormularioPublicacion

publicaciones_modelo = Blueprint('publicaciones_modelo', __name__)


@publicaciones_modelo.route("/publicacion/nuevo", methods=['GET', 'POST'])
@login_required
def nueva_publicacion():
    form = FormularioPublicacion()
    if form.validate_on_submit():
        publicacion = Publicacion(titulo=form.titulo.data, contenido=form.contenido.data, author=current_user)
        db.session.add(publicacion)
        db.session.commit()
        flash('Tu publicación ya se encuentra en el apartado!', 'success')
        return redirect(url_for('publicaciones.publicacionesApartado'))
    return render_template('crear_publicacion.html', title='Nueva publicación', form=form, legend='Nueva publicación')


@publicaciones_modelo.route("/publicacion/<int:id_publicacion>")
def publicacion(id_publicacion):
    publicacion = Publicacion.query.get_or_404(id_publicacion)
    return render_template('publicacion.html', titulo=publicacion.titulo, publicacion=publicacion)


@publicaciones_modelo.route("/publicacion/<int:id_publicacion>/actualizar", methods=['GET', 'POST'])
@login_required
def actualizar_publicacion(id_publicacion):
    publicacion = Publicacion.query.get_or_404(id_publicacion)
    if publicacion.author != current_user:
        abort(403)
    form = FormularioPublicacion()
    if form.validate_on_submit():
        publicacion.titulo = form.titulo.data
        publicacion.contenido = form.contenido.data
        db.session.commit()
        flash('Tu publicación ha sido actualizada exitosamente!', 'success')
        return redirect(url_for('publicaciones_modelo.publicacion', id_publicacion=publicacion.id))
    elif request.method == 'GET':
        form.titulo.data = publicacion.titulo
        form.contenido.data = publicacion.contenido
    return render_template('crear_publicacion.html', title='Actualizar publicación', form=form, legend='Actualizar Publicación')


@publicaciones_modelo.route("/publicacion/<int:id_publicacion>/eliminar", methods=['POST'])
@login_required
def eliminar_publicacion(id_publicacion):
    publicacion = Publicacion.query.get_or_404(id_publicacion)
    if publicacion.author != current_user:
        abort(403)
    db.session.delete(publicacion)
    db.session.commit()
    flash('Tu publicación ha sido elimina exitosamente!', 'success')
    return redirect(url_for('publicaciones.publicacionesApartado'))



