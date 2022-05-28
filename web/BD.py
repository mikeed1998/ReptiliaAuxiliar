from datetime import datetime
from flask import Flask, render_template, url_for, flash, redirect
from flask_sqlalchemy import SQLAlchemy
import pymysql


app = Flask(__name__)
app.config['SECRET_KEY'] = '5791628bb0b13ce0c676dfde280ba245'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root@127.0.0.1:3306/repaux'
db = SQLAlchemy(app)


def cargar_usuario(id_usuario):
    return Usuario.query.get(int(id_usuario))


class Usuario(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    nombre_usuario = db.Column(db.String(20), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    foto_perfil = db.Column(db.String(20), nullable=False, default='default.jpg')
    password = db.Column(db.String(60), nullable=False)
    publicaciones = db.relationship('Publicacion', backref='author', lazy=True)

    voto = db.relationship('PublicacionVotada', foreign_keys='PublicacionVotada.id_usuario', backref='user', lazy='dynamic')

    def like_post(self, publicacion):
        if not self.has_liked_post(publicacion):
            voto = PublicacionVotada(id_usuario=self.id, id_publicacion=publicacion.id)
            db.session.add(voto)


    def unlike_post(self, publicacion):
        if self.tiene_voto(publicacion):
            PublicacionVotada.query.filter_by(
                id_usuario=self.id,
                id_publicacion=publicacion.id).delete()


    def tiene_voto(self, publicacion):
        return PublicacionVotada.query.filter(
            PublicacionVotada.id_usuario == self.id,
            PublicacionVotada.id_publicacion == publicacion.id).count() > 0


    def get_reset_token(self, expires_sec=1800):
        s = Serializer(current_app.config['SECRET_KEY'], expires_sec)
        return s.dumps({'id_usuario': self.id}).decode('utf-8')


    @staticmethod
    def verify_reset_token(token):
        s = Serializer(current_app.config['SECRET_KEY'])
        try:
            user_id = s.loads(token)['user_id']
        except:
            return None
        return User.query.get(user_id)


    def __repr__(self):
        return f"Usuario('{self.nombre_usuario}', '{self.email}', '{self.foto_perfil}')"



class PublicacionVotada(db.Model):
    #__tablename__ = 'post_like'
    id = db.Column(db.Integer, primary_key=True)
    id_usuario = db.Column(db.Integer, db.ForeignKey('usuario.id'))
    id_publicacion = db.Column(db.Integer, db.ForeignKey('publicacion.id'))



class Publicacion(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    titulo = db.Column(db.String(100), nullable=False)
    fecha_publicacion = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    contenido = db.Column(db.Text, nullable=False)
    id_usuario = db.Column(db.Integer, db.ForeignKey('usuario.id'), nullable=False)

    votos = db.relationship('PublicacionVotada', backref='publicacion', lazy='dynamic')

    def __repr__(self):
        return f"Publicacion('{self.titulo}', '{self.fecha_publicacion}')"



class Taxonomia(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    dominio = db.Column(db.String(20), nullable=False)
    reino = db.Column(db.String(20), nullable=False)
    subreino = db.Column(db.String(20), nullable=False)
    superfilo = db.Column(db.String(20), nullable=False)
    filo = db.Column(db.String(20), nullable=False)
    subfilo = db.Column(db.String(20), nullable=False)
    superclase = db.Column(db.String(20), nullable=False)
    clase = db.Column(db.String(20), nullable=False)
    subclase = db.Column(db.String(20), nullable=False)
    orden = db.Column(db.String(20), nullable=False)
    familia = db.Column(db.String(20), nullable=False)
    genero = db.Column(db.String(50), nullable=False)
    especie = db.Column(db.String(50), nullable=False)
    subespecie = db.Column(db.String(50), nullable=False)
    descripcion = db.Column(db.Text, nullable=True)
    pais = db.Column(db.String(100), nullable=True)
    apodo = db.Column(db.String(100), nullable=True)
    grado_amenaza = db.Column(db.Integer, nullable=True)

    def __repr__(self):
        return f"Taxonomia('{self.familia}', '{self.genero}', '{self.especie}', '{self.subespecie}', '{self.descripcion}', '{self.tipo}', '{self.apodo}', '{self.grado_amenaza}')"



class PeticionTaxonomia(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    dominio = db.Column(db.String(20), nullable=False)
    reino = db.Column(db.String(20), nullable=False)
    subreino = db.Column(db.String(20), nullable=False)
    superfilo = db.Column(db.String(20), nullable=False)
    filo = db.Column(db.String(20), nullable=False)
    subfilo = db.Column(db.String(20), nullable=False)
    superclase = db.Column(db.String(20), nullable=False)
    clase = db.Column(db.String(20), nullable=False)
    subclase = db.Column(db.String(20), nullable=False)
    orden = db.Column(db.String(20), nullable=False)
    familia = db.Column(db.String(20), nullable=False)
    genero = db.Column(db.String(50), nullable=False)
    especie = db.Column(db.String(50), nullable=False)
    subespecie = db.Column(db.String(50), nullable=False)
    descripcion = db.Column(db.Text, nullable=True)
    pais = db.Column(db.String(100), nullable=True)
    apodo = db.Column(db.String(100), nullable=True)
    grado_amenaza = db.Column(db.Integer, nullable=True)

    def __repr__(self):
        return f"Taxonomia('{self.familia}', '{self.genero}', '{self.especie}', '{self.subespecie}', '{self.descripcion}', '{self.tipo}', '{self.apodo}', '{self.grado_amenaza}')"


