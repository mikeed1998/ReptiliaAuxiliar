from flask import render_template, Blueprint

legislacion = Blueprint('legislacion', __name__)


@legislacion.route('/legislacion')
def leg_in():
	return render_template('legislacion.html', title='Legislacion')