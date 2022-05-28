from flask import render_template, url_for, flash, redirect, request, Blueprint
from flask_login import login_user, current_user, logout_user, login_required
from web import db, bcrypt
from web.models import Usuario, Publicacion
from web.usuarios.forms import (
                                    FormularioRegistro,
                                    FormularioLogin,
                                    FormularioActulizarCuenta,
                                    FormularioSolicitudRecuperarPassword,
                                    FormularioRecuperarPassword
                                )
from web.usuarios.utils import guardar_foto, enviar_correo_recuperacion

usuarios = Blueprint('usuarios', __name__)


@usuarios.route("/register", methods=['GET', 'POST'])
def register():
    if current_user.is_authenticated:
        return redirect(url_for('publicaciones.publicacionesApartado'))
    form = FormularioRegistro()
    if form.validate_on_submit():
        hashed_password = bcrypt.generate_password_hash(form.password.data).decode('utf-8')
        usuario = Usuario(nombre_usuario=form.nombre_usuario.data, email=form.email.data, password=hashed_password)
        db.session.add(usuario)
        db.session.commit()
        flash('Tu cuenta ha sido creada exitosamente! ahora puedes ingresar', 'success')
        return redirect(url_for('usuarios.login'))
    return render_template('register.html', title='Registro', form=form)


@usuarios.route("/login", methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('publicaciones.publicacionesApartado'))
    form = FormularioLogin()
    if form.validate_on_submit():
        if form.email.data == 'admin@admin.com' and form.password.data == 'admin':
            return redirect(url_for('administrador.estadistica'))
        else:
            usuario = Usuario.query.filter_by(email=form.email.data).first()
            if usuario and bcrypt.check_password_hash(usuario.password, form.password.data):
                login_user(usuario, remember=form.remember.data)
                siguiente_pagina = request.args.get('next')
                return redirect(siguiente_pagina) if siguiente_pagina else redirect(url_for('main.index'))
            else:
                flash('Logeo incorrecto. Por favor revisa que el correo y contraseña sean correctos', 'danger')
    return render_template('login.html', title='Ingresar', form=form)


@usuarios.route("/logout")
def salir():
    logout_user()
    return redirect(url_for('main.index'))


@usuarios.route("/account", methods=['GET', 'POST'])
@login_required
def cuenta():
    form = FormularioActulizarCuenta()
    if form.validate_on_submit():
        if form.foto_perfil.data:
            imagen = guardar_foto(form.foto_perfil.data)
            current_user.foto_perfil = imagen
        usuario = Usuario.query.all()
        for u in usuario:
            if u.nombre_usuario == form.nombre_usuario.data:
                flash('Este nombre de usuario ya esta siendo usado', 'warning')
                return redirect(url_for('usuarios.cuenta'))
        current_user.nombre_usuario = form.nombre_usuario.data
        db.session.commit()
        flash('Tu cuenta ha sido actualizada!', 'success')
        return redirect(url_for('usuarios.cuenta'))
    elif request.method == 'GET':
        form.nombre_usuario.data = current_user.nombre_usuario
    foto_perfil = url_for('static', filename='profile_pics/' + current_user.foto_perfil)
    return render_template('cuenta_usuario.html', title='Cuenta', foto_perfil=foto_perfil, form=form)


@usuarios.route("/user/<string:nombre_usuario>")
def publicaciones_usuario(nombre_usuario):
    pagina = request.args.get('pagina', 1, type=int)
    usuario = Usuario.query.filter_by(nombre_usuario=nombre_usuario).first_or_404()
    publicaciones = Publicacion.query.filter_by(author=usuario)\
        .order_by(Publicacion.fecha_publicacion.desc())\
        .paginate(page=pagina, per_page=5)
    return render_template('publicaciones_usuario.html', publicaciones=publicaciones, usuario=usuario)


@usuarios.route("/recuperar_password", methods=['GET', 'POST'])
def reset_request():
    if current_user.is_authenticated:
        return redirect(url_for('publicaciones.home'))
    form = FormularioSolicitudRecuperarPassword()
    if form.validate_on_submit():
        usuario = Usuario.query.filter_by(email=form.email.data).first()
        send_reset_email(usuario)
        flash('Se ha enviado un correo electrónico con instrucciones para restablecer su contraseña.', 'info')
        return redirect(url_for('usuarios.login'))
    return render_template('recuperar_pass.html', title='Reset Password', form=form)


@usuarios.route("/reset_password/<token>", methods=['GET', 'POST'])
def reset_token(token):
    if current_user.is_authenticated:
        return redirect(url_for('publicaciones.home'))
    user = User.verify_reset_token(token)
    if user is None:
        flash('Este token no es valido o ha expirado', 'warning')
        return redirect(url_for('users.reset_request'))
    form = FormularioRecuperarPassword()
    if form.validate_on_submit():
        hashed_password = bcrypt.generate_password_hash(form.password.data).decode('utf-8')
        user.password = hashed_password
        db.session.commit()
        flash('¡Tu contraseña ha sido actualizada! Ahora puede iniciar sesión', 'success')
        return redirect(url_for('usuarios.login'))
    return render_template('reset_token.html', title='Reset Password', form=form)


