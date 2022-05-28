import os
import uuid
import flask
import urllib
from PIL import Image
from tensorflow.keras.models import load_model
from flask import Flask , render_template  , request , send_file, redirect, url_for, current_app
from tensorflow.keras.preprocessing.image import load_img , img_to_array
from flask import render_template, Blueprint

busqueda_inteligente = Blueprint('busqueda_inteligente', __name__, static_folder='static', template_folder='templates')

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
modelo = load_model(os.path.join(BASE_DIR , 'modelo1000.h5'))


extensiones_imagenes = set(['jpg' , 'jpeg' , 'png' , 'jfif'])
def allowed_file(archivo):
    return '.' in archivo and \
           archivo.rsplit('.', 1)[1] in extensiones_imagenes


clases=[
			'Caiman Yacare',
			'Chelydra Serpentina',
			'Crocodylus Acutus', 
            'Macrochelys Temminckii', 
            'Trachemys Scripta Elegans', 
            'Trachemys Scripta Scripta', 
            'Trachemys Scripta Troosti'
        ]


def predecir(archivo , modelo):
    imagen = load_img(archivo, target_size = (224 , 224))
    imagen = img_to_array(imagen)
    imagen = imagen.reshape(1 , 224 ,224 ,3)

    imagen = imagen.astype('float32')
    imagen = imagen/255.0
    resultado = modelo.predict(imagen)

    diccionario_r = {}
    for i in range(7):
        diccionario_r[resultado[0][i]] = clases[i]

    res = resultado[0]
    res.sort()
    res = res[::-1]
    probabilidad = res[:3]
    
    probabiliad_resultado = []
    clase_resultado = []
    for i in range(3):
        probabiliad_resultado.append((probabilidad[i]*100).round(2))
        clase_resultado.append(diccionario_r[probabilidad[i]])

    return clase_resultado, probabiliad_resultado



@busqueda_inteligente.route('/busqueda_inteligente')
def principal_busqueda_inteligente():
	return render_template('busqueda_inteligente.html', title='Busqueda Inteligente')



@busqueda_inteligente.route('/prediccion', methods=['GET', 'POST'])
def prediccion():
	error = ''
	target_img = os.path.join(current_app.root_path, 'static/images')
	if request.method == 'POST':
		if(request.form):
			link = request.form.get('link')
			try:
				resource = urllib.request.urlopen(link)
				unique_filename = str(uuid.uuid4())
				filename = unique_filename+".jpg"
				img_dir = os.path.join(target_img , filename)
				output = open(img_path , "wb")
				output.write(resource.read())
				output.close()
				img = filename

				clase_resultado, probabiliad_resultado = predecir(img_dir , modelo)

				predicciones = {
					"clase1": clase_resultado[0],
					"clase2": clase_resultado[1],
					"clase3": clase_resultado[2],
					"probabilidad1": probabiliad_resultado[0],
					"probabilidad2": probabiliad_resultado[1],
					"probabilidad3": probabiliad_resultado[2],
				}
			
			except Exception as e:
				print(str(e))
				error = 'La imagen de este sitio no es accesible o es de un formano no valido.'
				
			if(len(error) == 0):
				return  render_template('prediccion.html' , img  = img , predictions = predictions)
			else:
				return render_template('busqueda_inteligente.html' , error = error) 
			
		elif (request.files):
			file = request.files['file']
			if file and allowed_file(file.filename):
				file.save(os.path.join(target_img , file.filename))
				img_dir = os.path.join(target_img , file.filename)
				img = file.filename
				
				clase_resultado, probabiliad_resultado = predecir(img_dir , modelo)

				predicciones = {
					"clase1": clase_resultado[0],
					"clase2": clase_resultado[1],
					"clase3": clase_resultado[2],
					"probabilidad1": probabiliad_resultado[0],
					"probabilidad2": probabiliad_resultado[1],
					"probabilidad3": probabiliad_resultado[2],
				}
			
			else:
				error = "Por favor, inserta imagenes con los formatos jpg, jpeg o png."
			
			if(len(error) == 0):
				return  render_template('prediccion.html', img=img, predicciones=predicciones)
			else:
				return render_template('busqueda_inteligente.html', error=error)

	else:
		return render_template('busqueda_inteligente.html')

