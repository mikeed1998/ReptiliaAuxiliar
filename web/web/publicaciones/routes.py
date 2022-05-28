from flask import render_template, request, Blueprint, redirect
from web.models import Publicacion
from flask_login import current_user, login_required
from web import db
from sqlalchemy.sql.expression import func

publicaciones = Blueprint('publicaciones', __name__)

'''
@publicaciones.route("/publicaciones")
def home():
    page = request.args.get('page', 1, type=int)
    posts = Post.query.order_by(Post.date_posted.desc()).paginate(page=page, per_page=5)
    return render_template('home.html', posts=posts)
'''

@publicaciones.route('/publicaciones', methods=['GET', 'POST'], defaults={"pagina": 1}) 
@publicaciones.route('/publicaciones<int:pagina>', methods=['GET', 'POST'])
def publicacionesApartado(pagina):
	pagina = pagina
	paginas = 10
	publicaciones = Publicacion.query.order_by(Publicacion.fecha_publicacion.desc()).paginate(pagina, paginas, error_out=False) 
	if request.method == 'POST' and 'tag' in request.form:
		tag = request.form["tag"]
		search = "%{}%".format(tag)
		publicaciones = Publicacion.query.filter( Publicacion.titulo.like(search) ).paginate(per_page=paginas, error_out=False) 
		return render_template('publicaciones.html', publicaciones=publicaciones, tag=tag)
	return render_template('publicaciones.html', publicaciones=publicaciones)


@publicaciones.route('/voto/<int:id_publicacion>/<action>')
@login_required
def like_action(id_publicacion, action):
    publicacion = Publicacion.query.filter_by(id=id_publicacion).first_or_404()
    if action == 'like':
        current_user.like_post(publicacion)
        db.session.commit()
    if action == 'unlike':
        current_user.unlike_post(publicacion)
        db.session.commit()
    return redirect(request.referrer)