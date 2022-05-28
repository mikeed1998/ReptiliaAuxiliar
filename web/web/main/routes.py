from flask import render_template, request, Blueprint

main = Blueprint('main', __name__)


@main.route("/")
def index():
	return render_template('index.html', title='Inicio')


@main.route("/Acerca de")
def acercade():
    return render_template('acercade.html', title='Acerca de')