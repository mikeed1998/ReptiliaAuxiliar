-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-11-2021 a las 09:11:30
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `repaux`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peticion_taxonomia`
--

CREATE TABLE `peticion_taxonomia` (
  `id` int(11) NOT NULL,
  `dominio` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reino` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subreino` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `superfilo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `filo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subfilo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `superclase` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clase` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subclase` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `familia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `especie` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subespecie` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `pais` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apodo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grado_amenaza` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_publicacion` datetime NOT NULL,
  `contenido` text COLLATE utf8_unicode_ci NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `titulo`, `fecha_publicacion`, `contenido`, `id_usuario`) VALUES
(1, 'Adopción de reptiles', '2021-11-11 01:25:49', 'Buenos días llevo muchos años adoptando reptiles y otros exóticos y ahora con la situación del virus, he decidido volver a adoptar si es que no puedes cuidar a tu animal como se merece.\r\nAquí siempre podrás ver como está o pedirme que te mande fotos o lo que quieras.\r\nLo importante es que el animal esté feliz y en las mejores condiciones.\r\nSaludos', 1),
(2, 'Ayuda por favor', '2021-11-11 01:34:28', 'Me compré un Gecko y estoy intentando hacer todo lo mejor posible, pero cada persona y en cada sitio web se contradicen, tengo la siguiente duda, en mi habitación hace mucha calor, el terrario coge unos 28 grados como mínimo sin manta térmica, supongo que me mide la temperatura global de todo el terrario, tengo entendido que tiene que estar a esa temperatura recomendable ahora que empieza el verano tengo miedo de que tenga más temperatura de la que deba y pueda ocasionarle algún problema, la única fuente que tengo de calor es una manta térmica, que puedo hacer se la dejo siempre puesta, se la desconecto siempre y cuando no baje de esa tempatura? No encuentro nada en foros y me gustaría que alguien me ayudará. Gracias', 1),
(3, 'Ayuda con mis geckos leopardo (Eublepharis Macularius)', '2021-11-11 01:37:53', 'Hola, quería pedir ayuda y consejo por favor! Hace algo más de una semana que adopté a dos gecko leopardos. Son hembras y tienen aproximadamente 2 años, quizá algo más. Es mi primera vez cuidado estos animales y reptiles en general, y aunque me he estado informando bien, aun hay muchas cosas que se escapan de mi entendimiento.\r\n\r\nAmbas están un poco raras, tiene como altibajos. Hay dias en los que no salen para nada de sus cuevas y dias en los que sí, sin embargo, ambas llevan bastante tiempo sin comer. Es una situación un poco complicada por que aun no he conseguido que ambas coman regularmente. El primer día una de ellas (la gris) estaba hambrienta, y comió varios tenebrios, pero la otra (amarilla) no quiso comer nada. Unos 4 o días después, fue esta ultima la que comió, y la otra no quiso. Sin embargo, la amarilla a la mañana siguiente había vomitado todo lo que había comido.', 2),
(4, 'Trachemys scripta elegans macho', '2021-11-11 01:45:05', 'Hola, soy nuevo y necesito consejo o una solución al problema que tengo con una de mis tortugas.\r\nTenía 3 tortugas; 2 hembras y un macho. Una de las hembras no es de orejas rojas y es de mayor tamaño que la otra.\r\nEl caso es que el pasado mes de junio la hembra de orejas rojas murió por no poder expulsar un huevo, el macho sólo la cortejaba a ella, y ahora resulta que desde hace unos meses creo que le ataca a la otra hembra cuando está en el agua. La pobre se pasa todo el día fuera del agua y cada vez que se mete el macho la persigue como un torpedo, le tiene pánico y en cuanto puede se sale del agua.', 3),
(5, 'Adopción de 2 tortugas de agua (trachemys scripta) orejas amarillas', '2021-11-11 01:49:30', 'Hola. Estoy buscando alguien que esté interesado en hacerse cargo de dos tortugas de agua de orejas amarillas\r\nTienen ambas unos 6 años\r\nHasta ahora las tenía en casa pero tengo que cambiar de residencia y en la nueva casa no puedo tenerlas\r\nNO hago lucro de la operación ni pretendo sacar rendimiento económico. Las regalo.\r\nPero quiero que alguien que le gusten y que se ocupe ahora que yo ya no puedo. Nada más.', 4),
(6, 'Tortugas de orejas rojas', '2021-11-11 01:52:41', 'Estas pueden comer alimentos típicos (tortillas o hasta pedazos de pollo).', 4),
(7, 'Enfermedades más comunes en las tortugas de agua', '2021-11-11 01:56:23', 'Estas son algunas de las enfermedades más comunes en las tortugas de agua tratadas en rasgos generales.\r\n\r\n* Enfermedades respiratorias.\r\nSon distintas las patologías respiratorias que puede afectar de manera negativa su salud como resfriados de origen vírico o bacteriano.\r\nLos síntomas que se pueden apreciar a simple vista son secreción nasal, inactividad, disminución del apetito\r\n\r\n* Enfermedades gastrointestinales.\r\nEste tipo de enfermedades pueden llevar a que el animal tenga estreñimiento o diarrea, y la causa puede ser diversa, desde una inadecuada alimentación a parásitos, u otro tipo de microorganismo, generalmente relacionado con el mal estado del agua.\r\n\r\n* Problemas en el caparazón.\r\nEstos pueden ser debido a heridas, una mala alimentación, hongos, etc, pudiendo causar que este se torne blando, o que se hinche o eleve como ocurre con el piramidismo.\r\n\r\n* Enfermedades que afectan a los oídos.\r\nCuando esto ocurre, es habitual que se pueda apreciar la aparición de bultos en la tortuga, o tejidos hinchados en el área del cuello de nuestra tortuga, etc. Este tipo de patologías es conveniente llevarla cuanto antes al veterinario o que sea atendido en una urgencia veterinaria.\r\n\r\n* Infecciones oculares.\r\nEste tipo de patologías son también de distinto tipo, y suelen ser de las más comunes en las visitas en las clínicas veterinarias.\r\n\r\n', 5),
(8, 'Reproducción de las tortugas de agua (Trachemys, pseudemys, o graptemys)', '2021-11-11 02:02:27', 'Las tortugas de agua normalmente alcanzan su madurez reproductiva a los 4-5 años de edad, y aproximadamente a esta edad es cuando comenzarán a aparearse.\r\nAntes, del apareamiento, se dará un ritual, como en otras especies del reino animal llamado cortejo. Normalmente, el cortejo es realizado entre marzo y junio.\r\nDurante el cortejo, el cual parece una extraña «danza» el macho perseguirá a la hembra moviendo y palmeando sus patas delanteras en la cara de la hembra, o puede nadar rodeándola tocándole suavemente el caparazón.\r\nSin embargo, durante el cortejo, puede que no haya aceptación de la hembra, y no se realice el apareamiento, y que incluso ésta se ponga algo violenta o agresiva.  En estos casos, pasados unos 4 minutos o ya constatando la situación convendría separar al macho de la hembra, ya que la hembra puede estresarse e incluso puede llegar el caso de que al intentarlo tanto y la insistencia del macho pudiera ahogar a la hembra, por eso podemos tenerlos separados por un tiempo hasta volver a intentarlo y ver si hay suerte.\r\nSi tras el cortejo hay aceptación por parte de la hembra,  y se ha producido la cópula, ya estaremos en un período de gestación, que suele durar un período de 2 meses aproximadamente.', 5),
(9, 'Gestación de las tortugas acuaticas', '2021-11-11 02:11:17', 'Durante la gestación, debemos de procurar de mantener a la hembra tranquila y no estresarla. Uno de los signos que nos dará la hembra, será la bùsqueda de calor un poco más habitual que antes, ya que buscará asolearse para poder gestar los huevos, y por esto debemos de tener controlado la temperatura del agua como tener un punto de calor en la zona seca del acuaterrario.\r\n\r\nEn este período, probablemente la hembra tenga una notable pérdida de apetito. Ante ésto, y si bien es normal, podemos probar con diferentes alimentos ya que debemos seguir dándole de comer como antes, pero intentando variar un poco los alimentos, y probando, ya que suelen volverse un poco más carnívoras, en busca de proteínas, y que tenga ciertas preferencias por una u otra comida.\r\n\r\nLlegando sobre la séptima semana, notaremos que la tortuga tiende a ponerse más nerviosa de lo habitual y queriendo salir de lo que es su habitáculo , y visitando la tierra en la zona seca y quizás el sustrato moviéndola con sus patas, lo que nos indica que está muy cercana al desove y está buscando un nido o sitio para este.\r\n\r\nEl lugar para el desove, o nido debe ser un lugar espacioso con tierra,  o en otro terrario con tierra o incluso un patio si disponemos de él, así que dependiendo de nuestras opciones deberemos estar atentos a la tortuga y retirarla cuando creamos que puede empezar a desovar como dijimos anteriormente. Lo que haremos es ir poniendo a la tortuga en su nido y dejarla por un tiempo que lo examine, escarbe  hasta que se familiarice. Lo más probable es que no haga la puesta de inmediato, y pueda tardar un poco, e incluso que haga agujeros como probando el terreno.\r\nUna vez la hembra se decida, hará su agujero de unos 20 cms (el que puede tardar un par de horas en realizarlo) y donde depositará los huevos (pueden ser hasta 20) y luego lo tapará para que incuben. De todas maneras, debemos controlar y tener cuidado que la hembra ponga los huevos, ya que puede darse el caso que retenga los huevos, lo que puede crear un grave peligro para su salud.\r\nLuego del desove, podemos dejar los huevos en su sitio esperando el curso natural, pero siempre controlando el nido, o por el contrario podemos retirarlos a una incubadora.\r\n\r\nAmbas opciones tienen sus dificultades, ya que en la primera si en el nido un huevo llegar a pudrirse al estar enterrados no nos enteraremos y afectará a los demás. En caso de utilizar una incubadora, tendremos que mover los huevos, lo cual no siempre es la mejor opción ya que podemos desprender el embrión.\r\n\r\nLas crías o tortuguitas tardarán entre 80 y 85 días en nacer o salir del cascarón, y si nos decidimos por la segunda opción de la incubadora podremos tenerlos más controlados que si estuvieran enterradas.', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_votada`
--

CREATE TABLE `publicacion_votada` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_publicacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion_votada`
--

INSERT INTO `publicacion_votada` (`id`, `id_usuario`, `id_publicacion`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 3, 4),
(4, 4, 1),
(5, 4, 3),
(6, 4, 5),
(7, 5, 1),
(8, 5, 4),
(9, 5, 7),
(10, 6, 8),
(11, 6, 7),
(12, 6, 1),
(13, 6, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxonomia`
--

CREATE TABLE `taxonomia` (
  `id` int(11) NOT NULL,
  `dominio` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reino` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subreino` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `superfilo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `filo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subfilo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `superclase` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clase` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subclase` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `familia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `especie` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subespecie` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `pais` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apodo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grado_amenaza` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `taxonomia`
--

INSERT INTO `taxonomia` (`id`, `dominio`, `reino`, `subreino`, `superfilo`, `filo`, `subfilo`, `superclase`, `clase`, `subclase`, `orden`, `familia`, `genero`, `especie`, `subespecie`, `descripcion`, `pais`, `apodo`, `grado_amenaza`) VALUES
(1, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Gavialidae', 'Gavialis', 'Gavialis gangeticus', '-', 'Es una especie de saurópsido del orden Crocodilia, la única del género Gavialis. Se caracteriza por una boca (hocico) muy flaca, adaptación a una dieta a base de peces, ya que no sirve para cazar grandes mamíferos; podría llegar a partirse si se ejerce demasiada presión.', 'India', 'Gavial o gavial del Ganges', 2),
(2, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Gavialidae', 'Tomistoma', 'Tomistoma schlegelii', '-', 'Es una especie de saurópsido crocodilio de la familia Gavialidae que vive en ríos de Malasia e Indonesia Occidental. Es verde con manchas negras y mide hasta 4 m.', 'China, India y Taiwán', 'Falso gavial, gavial malayo o falso gavial malayo', 3),
(3, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Caiman', 'Caiman Crocodilus', 'Caiman Crocodilus Apaporensis', 'Los machos llegan a medir entre 1,8 y 2,5 m de largo, y las hembras 1,4 m. Se alimentan de diferentes especies de animales: crustáceos, peces, anfibios, reptiles, aves y mamíferos grandes y pequeños.', 'México, Puerto Rico y Centroámerica', 'Caimán de anteojos', 4),
(4, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Caiman', 'Caiman Crocodilus', 'Caiman Crocodilus Crocodilus', '', '', '', 4),
(5, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Caiman', 'Caiman Crocodilus', 'Caiman Crocodilus Chiapasius', '', '', '', 4),
(6, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Caiman', 'Caiman Crocodilus', 'Caiman Crocodilus Fuscus', '', '', '', 4),
(7, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Caiman', 'Caiman Yacaré', '-', 'El yacaré negro alcanza los 2,5 m normalmente de tamaño adulto, aunque ocasionalmente aparecen ejemplares mayores. El hocico es alargado y angosto; aún con la boca cerrada pueden observarse varios dientes.', 'Paraguay, Bolivia, Brasil y Argentina.', 'Yacaré o Caimán del Para', 3),
(8, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Caiman', 'Caiman Latirostris', '-', ' Es endémico de las regiones subtropicales y tropicales de Sudamérica, que puede superar los tres metros de longitud. Su nombre deriva de la coloración de manchas difusas entre el verde intenso y el gris pálido que lo caracteriza. Está menos extendido que su pariente próximo el yacaré negro, con quien comparte hábitat.', 'Bolivia, Brasil, Argentina, Paraguay, y Uruguay', 'Yacaré overo', 4),
(9, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Melanosuchus', 'Melanosuchus Niger', '-', 'Presenta un característico color negro y habita en la Amazonía. Llegan a medir 6 metros, por lo que pueden devorar animales como venados o capibaras, e incluso tapires y otros mamíferos de gran tamaño.', 'Bolivia, Brasil, Colombia, Ecuador, Guayana francesa, Guyana y Perú', 'Caimán negro o jacaré negro', 4),
(10, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Paleosuchus', 'Paleosuchus trigonatus', '-', 'Es el segundo cocodrilo más pequeño del mundo, su alimentación se basa de reptiles, aves y pequeños mamíferos.', 'Bolivia, Brasil, Colombia, Ecuador, Guayana francesa y Guyana', 'Caimán postruso, cachirre o dirin-dirin', 4),
(11, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Paleosuchus', 'Paleosuchus palpebrosus', '-', 'Los machos alcanzan 1,6 metros de longitud en su edad adulta y las hembras 1,2 metros. Son la especie de cocodrilo más pequeña del mundo.Es una de las especies del orden crocodilia menos amenazada cuyas poblaciones se mantienen estables.', 'Bolivia, Brasil, Colombia, Ecuador, Guyana, Paraguay, Perú, Surinam y Venezuela.', 'Caimán de Cuvier, yacaré itá o yacaré enano o caimán enano', 4),
(12, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Alligator', 'Alligator Mississippiensis', '-', 'Es uno de los cocodrilos más grandes de América, alcanzando un máximo de 6 metros de longitud, aunque debido a la desaparición de grandes animales de la zona por causas antrópicas, hoy en día, los machos oscilan entre 4 y 4,5 m y las hembras alcanzan los 3 m. Su peso oscila entre los 70 kg de las hembras y los más de 450 kg de los machos.', 'USA, México', 'Aligátor americano, caimán del río Misisipi', 4),
(13, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Alligatoridae', 'Alligator', 'Alligator Sinensis', '-', 'Su aspecto es muy similar al de su congénere, el aligátor americano (Alligator mississippiensis), pero es notablemente más pequeño, rondando normalmente los 2 metros de largo, aunque se poseen descripciones de ejemplares excepcionales que llegaron a los tres metros. A diferencia de A. mississippiensis está completamente acorazado; incluso el estómago lo está, característica hallada en pocos crocodilianos. Son de color oscuro con bandas más claras a lo largo del cuerpo.', 'China', 'Aligátor chino o aligátor del Yangtze', 2),
(14, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus Acutus', 'NO', 'La longitud total de los adultos es de unos 6 m y su peso medio es de 500 kg, siendo el segundo cocodrilo de América en tamaño, solo después del cocodrilo del Orinoco del cual se han reportado individuos de hasta 7 m.4​5​6​ Su cabeza es estrecha y larga, con el morro ligeramente curvado, del que sobresalen los dientes cuando la boca está cerrada. Las escamas son de color claro y sobresalen más que en el aligátor (Alligator mississippiensis), mientras que las patas son más cortas y la cola está muy desarrollada. Los párpados se abren y cierran lateralmente y están provistos de glándulas que secretan el exceso de sal a través de los ojos en forma de las famosas “lágrimas de cocodrilo”, razón por la cual pueden vivir tanto en aguas dulces como salobres e incluso adentrarse en el mar para colonizar nuevos territorios. Debido a su metabolismo ectotermo, pueden pasar largos periodos de tiempo sin comer y hasta dos horas sin respirar.', 'USA, México, Venezuela, Perú y Ecuador', 'Lagarto real, lagarto amarillo o cocodrilo de río', 3),
(15, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus intermedius', 'NO', 'El cocodrilo del Orinoco es una especie oportunista que consume una amplia variedad de presas, desde ranas y serpientes hasta aves y mamíferos, aunque tiene preferencia por una dieta piscívora, se trata de un superdepredador, pues los adultos no tienen depredadores naturales, excepto el hombre. Los huevos tienen como principal depredador al lagarto overo, y las crías recién nacidas a menudo son presa de muchas especies de aves y peces carnívoros.', 'Colombia, Venezuela', 'Cocodrilo del Orinoco, caimán del Orinoco o caimán llanero', 1),
(16, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus johnstoni', 'NO', 'Se alimenta de peces, anfibios, pájaros y pequeños reptiles. Es famoso por ser capaz de trotar.', 'Australia', 'cocodrilo de Johnstone o cocodrilo australiano de agua dulce', 4),
(17, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus mindorensis', 'NO', 'El cocodrilo de Filipinas no consigue ser tan grande como algunos de los cocodrilos de agua salada que son nativos de la misma zona. Esta especie de cocodrilo es una de las especies más gravemente amenazadas alrededor. El declive de esta especie se debió en general a la explotación. No hay más de 500-1000 que viven fuera de cautiverio. Los próximos 10 años más o menos será muy importante para la supervivencia de este animal.', 'Filipinas', 'Cocodrilo filipino o de Mindoro', 1),
(18, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus moreletii', 'NO', 'Es de tamaño pequeño en comparación con algunos otros cocodrilos. Los machos pueden llegar a ser más grandes que las hembras, lo que se conoce como dimorfismo sexual. Los promedios de cocodrilos adultos son de alrededor de 3 metros de longitud, con un máximo de 4,3 metros hasta el momento confirmado y es similar a los cocodrilos americanos y cubanos en apariencia.', 'Guatemala, Belice, México', 'Cocodrilo de pantano, el cocodrilo Morelet o cocodrilo mexicano', 4),
(19, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus niloticus', 'NO', 'Puede medir hasta seis metros de largo y pesar hasta 900 kilogramos de peso. Su coloración puede ser verde oliva brillante, verde oscuro o bronce en el dorso y amarillo pálido en el vientre.', 'Angola, Burundi, Cabo Verde, República Centroafricana, República Democrática del Congo, República de', 'Cocodrilo del Nilo', 4),
(20, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus novaeguineae', 'NO', 'Esta especie llega a medir entre 3,5 (los machos) y 2,7 m (las hembras). Su aspecto es similar al cocodrilo de Johnston y al Crocodylus siamensis. Su color es gris pardo, con manchas oscuras en la cola.', 'Nueva Guinea', 'Cocodrilo de Nueva Guinea', 4),
(21, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus palustris', 'NO', 'El cocodrilo de las marismas tiene 19 dientes superiores a cada lado; un morro que tiene de ancho de base entre un tercio y un medio con respecto al largo; una cabeza dura y sin protuberancias; la unión fibrocartilaginosa entre las mandíbulas se extiende hasta el 4to o 5to diente; la sutura maxilar se presenta en el paladar, transversalmente, casi en línea recta, o inclinándose ligeramente; y los huesos nasales separando los premaxilares desde arriba. ', 'India, Bangladés, Sri Lanka, Pakistán, Nepal, Irán, India y China', 'Cocodrilo de las marismas, cocodrilo iraní, hocicudo, hindú o persa', 3),
(22, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus porosus', 'NO', 'El cocodrilo de agua salada tiene un hocico ancho en comparación con la mayoría de los cocodrilos. Sin embargo, tiene un hocico más largo que el del cocodrilo de las marismas (Crocodylus palustris); su longitud es el doble de su ancho en la base. Un par de crestas van desde los ojos a lo largo del centro del hocico. Las escamas son de forma ovalada y las placas son pequeñas en comparación con otras especies o comúnmente están completamente ausentes.', 'Australia, Indonesia, Filipinas, Malasia, Singapur, Tailandia, Vietnam, Brunei Darussalam, Camboya, ', 'Cocodrilo marino, cocodrilo de agua salada, cocodrilo de estuario o cocodrilo poroso', 4),
(23, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus rhombifer', 'NO', 'Es una de las especies más pequeñas del género, rara vez alcanza más de 3,5 m, teniendo además el hábitat más restringido. Entre sus parientes más cercanos están el cocodrilo del Nilo y el cocodrilo marino, los mayores reptiles actuales, que pueden alcanzar los 7 m de longitud. Un ejemplo de la evolución en condiciones de insularidad, en este caso tendiente a un enanismo isleño.', 'Cuba', 'Cocodrilo cubano', 1),
(24, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus siamensis', 'NO', 'El cocodrilo de Siam no es un cocodrilo grande, ya que no suele superar los 3 metros de longitud. Tiene una cabeza algo grande en comparación con el cuerpo, con ojos y narinas que sobresalen por su estilo de vida acuático. Sus extremidades son como las de otros cocodrílidos, con cinco dedos en la pata delantera y cuatro en la trasera, pero los dedos son más alargados. El cuerpo está coloreado con rayas que alternan entre el oliva y el marrón.', 'Indonesia, Filipinas, Malasia, Singapur, Tailandia, Vietnam, Brunei Darussalam, Camboya, Laos y Myan', 'Cocodrilo siamés', 1),
(25, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Crocodylus suchus', 'NO', 'Ha sido al mismo tiempo odiado y reverenciado por el hombre, especialmente en el Antiguo Egipto, donde los cocodrilos eran momificados y se les rendía culto. Los antiguos egipcios rendían culto a Sobek, un dios-cocodrilo asociado con la fertilidad, la protección, y el poder del faraón. La relación de los egipcios con Sobek era ambivalente: en ocasiones dieron caza a los cocodrilos, e injuriaron al dios, y otras veces lo vieron como el protector del faraón y origen de su poder.', ' República del Congo, Uganda, Gambia, Senegal, Mauritania, Burkina Faso, Costa de Marfil, la Repúbli', 'Cocodrilo africano occidental o cocodrilo del desierto', 0),
(26, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Osteolaemus Tetraspis', 'NO', 'Se alimenta de pequeños mamíferos, como roedores, que se acercan al agua donde vive, así como insectos acuáticos y anfibios. Normalmente es solitario y se camufla gracias a la variación de diversos colores grisáceos-verdosos que tiene en su piel.', 'Liberia, Costa de Marfil, Ghana, Togo, Benín, Nigeria, Camerún, Guinea Ecuatorial, Gabón y Santo Tom', 'Cocodrilo enano', 3),
(27, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Crocodilia', 'Crocodylidae', 'Crocodylus', 'Mecistops Cataphractus', 'NO', 'Este cocodrilo habita zonas occidentales del África Central, mayoritariamente Congo y Costa de Marfil, en ocasiones cerca de las desembocaduras, llegando incluso a encontrarse ejemplares en la isla de Bioko lo que demuestra cierta tolerancia a la salinidad. Habita preferentemente en zonas de vegetación densa, llevando una vida acuática. En su edad adulta puede alcanzar los 4 metros de longitud, aunque normalmente su media se sitúa en torno a 2,5 metros.', 'Liberia, Costa de Marfil, Ghana, Togo, Benín, Nigeria, Camerún, Guinea Ecuatorial, Gabón y Santo Tom', 'Cocodrilo hociquifino africano', 1),
(28, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Sphenodontia', 'Sphenodontidae', 'Sphenodon', 'Sphenodon punctatus', 'Sphenodon Punctatus Punctatus', 'Superficialmente es parecido a un lagarto midiendo unos 50 cm de largo y pesando de entre 0.5 a 1 kg. Es capaz de sobrevivir a temperaturas más bajas que otros reptiles. Son animales longevos, llegando a vivir más de un siglo sin embargo, se reproducen lentamente alcanzando la madurez sexual a los 10 años de vida. La puesta se produce a intervalos de 4 años y a los huevos les toma de entre doce a quince meses para eclosionar. Al igual que otras especies de reptiles, posee un tercer ojo en la parte superior del cráneo. Este ojo les sirve para absorber rayos ultravioletas y así producir vitamina D.', 'Nueva Zelanda', 'Tuátara común', 4),
(29, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Sphenodontia', 'Sphenodontidae', 'Sphenodon', 'Sphenodon punctatus', 'Sphenodon Punctatus Reischeki', '', '', '', 0),
(32, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Carettochelyidae', 'Carettochelys', 'Carettochelys insculpta', '-', '', '', '', 0),
(33, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Acanthochelys', 'Acanthochelys Macrocephala', '-', '', '', '', 0),
(34, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Acanthochelys', 'Acanthochelys Pallidipectoris', '-', '', '', '', 0),
(35, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Acanthochelys', 'Acanthochelys Radiolata', '-', '', '', '', 0),
(36, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Acanthochelys', 'Acanthochelys Spixii', '-', '', '', '', 0),
(37, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Burrungandjii', '-', '', '', '', 0),
(38, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Canni', '-', '', '', '', 0),
(39, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Colliei', '-', '', '', '', 0),
(40, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Expansa', '-', '', '', '', 0),
(41, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Gunaleni', '-', '', '', '', 0),
(42, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Kuchlingi', '-', '', '', '', 0),
(43, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Longicollis', '-', '', '', '', 0),
(44, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Mccordi', '-', '', '', '', 0),
(45, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Novaeguineae', '-', '', '', '', 0),
(46, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina oblonga', '-', '', '', '', 0),
(47, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Parkeri', '-', '', '', '', 0),
(48, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Pritchardi', '-', '', '', '', 0),
(49, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Reimanni', '-', '', '', '', 0),
(50, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Steindachneri', '-', '', '', '', 0),
(51, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', '	Chelodina', 'Chelodina Walloyarrina', '-', '', '', '', 0),
(52, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Chelus', 'Chelus fimbriata', '-', '', '', '', 0),
(53, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Albagula', '-', '', '', '', 0),
(54, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Branderhorstii', '-', '', '', '', 0),
(55, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Dentata', '-', '', '', '', 0),
(56, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Flaviventralis', '-', '', '', '', 0),
(57, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Irwini', '-', '', '', '', 0),
(58, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Lavarackorum', '-', '', '', '', 0),
(59, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Novaeguineae', '-', '', '', '', 0),
(60, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Rhodini', '-', '', '', '', 0),
(61, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elseya', 'Elseya Schultzei', '-', '', '', '', 0),
(62, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Elusor', 'Elusor Macrurus', '-', '', '', '', 0),
(63, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Emydura', 'Emydura Australis', '-', '', '', '', 0),
(64, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Emydura', 'Emydura Gunaleni', '-', '', '', '', 0),
(65, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Emydura', 'Emydura Macquarii ', '-', '', '', '', 0),
(66, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Emydura', 'Emydura Subglobosa', '-', '', '', '', 0),
(67, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Emydura', 'Emydura Tanybaraga', '-', '', '', '', 0),
(68, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Emydura', 'Emydura Victoriae', '-', '', '', '', 0),
(69, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Hydromedusa', 'Hydromedusa Maximiliani ', '-', '', '', '', 0),
(70, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Hydromedusa', 'Hydromedusa Tectifera', '-', '', '', '', 0),
(71, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Phrynops', 'Phrynops Geoffroanus', '-', '', '', '', 0),
(72, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Phrynops', 'Phrynops Hilarii', '-', '', '', '', 0),
(73, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Phrynops', 'Phrynops Tuberosus', '-', '', '', '', 0),
(74, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Phrynops geoffroanus', 'Phrynops Williamsi', '-', '', '', '', 0),
(75, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Platemys', 'Platemys Platycephala', 'Platemys Platycephala Melanonota', '', '', '', 0),
(76, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Platemys', 'Platemys Platycephala', 'Platemys Platycephala Platycephala', '', '', '', 0),
(77, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Pseudemydura', 'Pseudemydura Umbrina', '-', '', '', '', 0),
(78, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelidae', 'Rheodytes', 'Rheodytes Leukops', '-', '', '', '', 0),
(79, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Cheloniidae', 'Caretta', 'Caretta Caretta', '-', '', '', '', 0),
(80, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Cheloniidae', 'Lepidochelys', 'Lepidochelys Kempii', '-', '', '', '', 0),
(81, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Cheloniidae', 'Lepidochelys', 'Lepidochelys Olivacea', '-', '', '', '', 0),
(82, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Cheloniidae', 'Chelonia', 'Chelonia Mydas', '-', '', '', '', 0),
(83, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Cheloniidae', 'Chelonia', 'Chelonia Agassizii', '-', '', '', '', 0),
(84, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Cheloniidae', 'Eretmochelys', 'Eretmochelys Imbricata', '-', '', '', '', 0),
(85, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Cheloniidae', 'Natator', 'Natator Depressus', '-', '', '', '', 0),
(86, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelydridae', 'Macrochelys', 'Macrochelys Apalachicolae', '-', '', 'USA', 'Tortuga mordedora Apalachicola', 0),
(87, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelydridae', 'Macrochelys', 'Macrochelys Suwanniensis', '-', '', 'USA', 'Tortuga mordedora de Suwannee', 0),
(88, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelydridae', 'Macrochelys', 'Macrochelys Temminckii', '-', 'Esta tortuga se caracteriza por su gran cabeza y su cola larga y gruesa. Su caparazón posee tres hileras osteodérmicas dorsales. Respecto a su coloración, es gris, marrón, negro, o verde oliva, a menudo cubiertos de algas. Poseen patrones de color amarillo alrededor de los ojos, para romper el esquema visual y mantener a la tortuga camuflada. Su peso en ejemplares adultos en promedio alcanza los 80 kg y una longitud de 75 cm. Sin embargo, se han citado casos de tortugas caimán de más de 80 centímetros y 110 kilos de masa corporal.', 'USA', 'Tortuga caimán', 3),
(89, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelydridae', 'Chelydra', 'Chelydra acutirostris', '-', '', 'Colombia, Ecuador, Costa Rica, Honduras, Panamá y Nicaragua.4', '', 0),
(90, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelydridae', 'Chelydra', 'Chelydra rossignonii', '-', 'Se alimenta de camarones, cangrejos, almejas, ranas, insectos, peces, y ocasionalmente pequeños vertebrados, plantas acuáticas, algas y frutos caídos en el agua.', 'México, Belice, Guatemala y Honduras.', '', 3),
(91, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Chelydridae', 'Chelydra', 'Chelydra serpentina', '-', 'Mide entre 23 y 49 cm. Su cola larga es casi de la longitud del caparazón y tiene una línea de escamas en forma de sierra a lo largo de ésta. Su caparazón presenta tres líneas de quillas en los juveniles que se reducen notablemente con la edad. El dorso es de color café claro a casi negro; el vientre va de blanquecino a crema.', 'Canadá, este de los Estados Unidos, México, Colombia, Ecuador y Costa Rica.', 'Tortuga serpentina, tortuga lagarto, tortuga satán, tortuga mordedora, tortuga toro, talaman, bache,', 4),
(92, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Dermatemydidae', 'Dermatemys', 'Dermatemys Mawii', '-', 'La tortuga blanca es la tortuga más grande de Mesoamérica, llegando a medir hasta 65 cm., y alcanza un peso de 22 kg. Es una de las tortugas más antiguas que actualmente existen, y es el único representante viviente de la familia Dermatemydidae, una familia de tortugas conocida desde el Cretácico al Mioceno, por eso es considerada un fósil viviente', 'México, Honduras', 'Tortuga blanca o tortuga Tabasco', 1),
(93, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Dermochelyidae', 'Dermochelys', 'Dermochelys Coriacea', '-', '', ' México, Costa Rica, Islas Británicas, Noruega, Alaska, Japón, Argentina, Chile y Australia.', 'Tortuga tora, canal, baula, laúd o tinglar.', 3),
(94, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Capolongoi', '', '', '', 0),
(95, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Colchica', '', '', '', 0),
(96, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Eiselti', '', '', '', 0),
(97, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Fritzjuergenobstii', '', '', '', 0),
(98, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Galloitalica', '', '', '', 0),
(99, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Hellenica', '', '', '', 0),
(100, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Hispanica', '', '', '', 0),
(101, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Iberica', '', '', '', 0),
(102, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Lanzai', '', '', '', 0),
(103, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Luteofusca ', '', '', '', 0),
(104, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Marmorata', '', '', '', 0),
(105, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Occidentalis', '', '', '', 0),
(106, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Orbicularis', '', '', '', 0),
(107, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Orientalis', '', '', '', 0),
(108, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Orbicularis', 'Emys Orbicularis Persica', '', '', '', 0),
(109, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emys', 'Emys Trinacris', '-', '', '', '', 0),
(110, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Emydoidea', 'Emydoidea Blandingii', '-', '', '', '', 0),
(111, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Actinemys', 'Actinemys Marmorata', '-', '', '', '', 0),
(112, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Clemmys', 'Clemmys Guttata', '-', '', '', '', 0),
(113, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Glyptemys', 'Glyptemys Muhlenbergii', '-', '', '', '', 0),
(114, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Glyptemys', 'Glyptemys Insculpta', '-', '', '', '', 0),
(115, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene Coahuila', '-', '', '', '', 0),
(116, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene Nelsoni', '-', '', '', '', 0),
(117, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene Ornata', 'Terrapene Ornata Luteola', '', '', '', 0),
(118, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene Ornata', 'Terrapene Ornata Ornata', '', '', '', 0),
(119, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene carolina', 'Terrapene Carolina Carolina', '', '', '', 0),
(120, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene carolina', 'Terrapene Carolina Bauri', '', '', '', 0),
(121, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene carolina', 'Terrapene Carolina Major', '', '', '', 0),
(122, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene carolina', 'Terrapene Carolina Triunguis', '', '', '', 0),
(123, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene Mexicana', '-', '', '', '', 0),
(124, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Terrapene', 'Terrapene Yucatana', '-', '', '', '', 0),
(125, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Deirochelys', 'Deirochelys Reticularia', 'Deirochelys Reticularia Reticularia', '', '', '', 0),
(126, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Deirochelys', 'Deirochelys Reticularia', 'Deirochelys Reticularia Chrysea', '', '', '', 0),
(127, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Deirochelys', 'Deirochelys Reticularia', 'Deirochelys Reticularia Miaría', '', '', '', 0),
(128, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Chrysemys', 'Chrysemys Picta', 'Chrysemys Picta Picta', '', '', '', 0),
(129, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Chrysemys', 'Chrysemys Picta', 'Chrysemys Picta Bellii', '', '', '', 0),
(130, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Chrysemys', 'Chrysemys Picta', 'Chrysemys Picta Marginata', '', '', '', 0),
(131, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Chrysemys', 'Chrysemys Picta', 'Chrysemys Picta Dorsalis', '', '', '', 0),
(132, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Barbouri', '-', '', '', '', 0),
(133, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Caglei', '-', '', '', '', 0),
(134, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Ernsti', '-', '', '', '', 0),
(135, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Flavimaculata', '-', '', '', '', 0),
(136, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Geographica', '-', '', '', '', 0),
(137, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Gibbonsi', '-', '', '', '', 0),
(138, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Nigrinoda', '-', '', '', '', 0),
(139, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Oculifera', '-', '', '', '', 0),
(140, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Ouachitensis', '-', '', '', '', 0),
(141, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Pearlensis', '-', '', '', '', 0),
(142, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Pseudogeographica', 'Graptemys Pseudogeographica Kohnii', '', '', '', 0),
(143, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Pulchra', '-', '', '', '', 0),
(144, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Graptemys', 'Graptemys Versa', '-', '', '', '', 0),
(145, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Malaclemys', 'Malaclemys Terrapin', 'Malaclemys Terrapin Centrata', '', '', '', 0),
(146, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Malaclemys', 'Malaclemys Terrapin', 'Malaclemys Terrapin Littoralis', '', '', '', 0),
(147, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Malaclemys', 'Malaclemys Terrapin', 'Malaclemys Terrapin Macrospilota', '', '', '', 0),
(148, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Malaclemys', 'Malaclemys Terrapin', 'Malaclemys Terrapin Pileata', '', '', '', 0),
(149, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Malaclemys', 'Malaclemys Terrapin', 'Malaclemys Terrapin Rhizophorarum', '', '', '', 0),
(150, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Malaclemys', 'Malaclemys Terrapin', 'Malaclemys Terrapin Tequesta', '', '', '', 0),
(151, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Malaclemys', 'Malaclemys Terrapin', 'Malaclemys Terrapin Terrapin', '', '', '', 0),
(152, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Pseudemys', 'Pseudemys Alabamensis', '-', '', '', '', 0),
(153, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Pseudemys', 'Pseudemys Concinna', '-', '', '', '', 0),
(154, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Pseudemys', 'Pseudemys Floridana', '-', '', '', '', 0),
(155, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Pseudemys', 'Pseudemys Gorzugi', '-', '', '', '', 0),
(156, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Pseudemys', 'Pseudemys Nelsoni', '-', '', '', '', 0),
(157, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Pseudemys', 'Pseudemys Peninsularis', '-', '', '', '', 0),
(158, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Pseudemys', 'Pseudemys Rubriventris', '-', '', '', '', 0),
(159, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Pseudemys', 'Pseudemys Texana', '-', '', '', '', 0),
(160, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Adiutrix', '-', '', 'Brasil', 'tortuga de Maranhão', 2),
(161, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Callirostris', 'Trachemys Callirostris Callirostris', 'Caparazón verde con manchas circulares (ocelos) amarillas y negras. Plastrón amarillo con dibujos verdes en casi toda la superficie del plastrón. Dibujos circulares y puntos amarillos en la piel, especialmente en la cara. Presentan dimorfismo sexual, siendo las hembras de mayor tamaño, con un caparazón de 23 a 30 cm de largo, mientras que en los machos alcanza entre 19 y 25 cm. La cola es más larga en los machos que en las hembras, pero a diferencia de otras tortugas de su género, los machos no presentan las uñas más largas.', 'Colombia, Venezuela y México', 'Hicotea, jicotea o tortuga de orejas naranjas', 0),
(162, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Callirostris', 'Trachemys Callirostris Chichiriviche', '', '', '', 0),
(163, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys decorata', '-', 'A diferencia de Trachemys scripta de América del Norte no tiene manchas rojas en la cabeza. Tiene rayas oscuras en el cuello y la cola. El caparazón es de color marrón y la parte inferior es de color amarillo. Tiene una dieta que consiste en insectos (grillos), peces, vegetación, etc.', 'República Dominicana, Haití, Cuba y Puerto Rico.', 'Tortuga de La Española', 3),
(164, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Decussata', '-', '', 'Cuba, Isla de la Juventud, Islas Caimán y Guadalupe', 'Tortuga cubana', 0),
(165, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Dorbigni', '-', 'Posee un caparazón hidrodinámico. Sus dedos son bastante palmeados y con pequeñas uñas muy afiladas. Tiene un cuerpo y caparazón verdes con dibujos amarillos o naranjas. Posee a ambos lados de su cabeza dos enormes manchas de color amarillo por lo que es muy fácil identificar la especie. Con la edad pierden el color del caparazón y quedan casi marrones.', 'Uruguay, Argentina y Brasil', 'Tortuga morrocoyo y tortuga tigre de río', 0),
(166, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Emolli', '-', 'Esta especie puede llegar a medir hasta 37 cm. Con tan solo dos años de vida, estas tortugas pueden llegar a sobrepasar ya los 20 cm, ya que presentan un crecimiento muy rápido.', 'Nicaragua, Costa rica', 'Tortuga nicaragüense', 0),
(167, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Gaigeae', 'Trachemys Gaigeae Gaigeae', '', '', 'Jicotea del Rio Nazas', 0),
(168, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Gaigeae', 'Trachemys Gaigeae Hartwegi', '', '', '', 0);
INSERT INTO `taxonomia` (`id`, `dominio`, `reino`, `subreino`, `superfilo`, `filo`, `subfilo`, `superclase`, `clase`, `subclase`, `orden`, `familia`, `genero`, `especie`, `subespecie`, `descripcion`, `pais`, `apodo`, `grado_amenaza`) VALUES
(169, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Grayi', '-', '', 'México, Guatemala, y El Salvador.', 'Hicotea de Tehuantepec', 0),
(170, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Nebulosa', 'Trachemys Nebulosa Nebulosa', 'Alcanzan entre 25 y 37 cm, dependiendo de cada subespecie. Viven en todo tipo de cursos de agua: ríos lentos, lagos, pantanos, estanques, balsas,... Se adaptan casi a cualquier medio acuático, excepto a los ríos de cauce rápido. Les gustan las zonas con muchas vegetación acuática flotante donde haya rocas y troncos donde poder asolearse.', 'Estados Unidos y México', 'Tortuga escurridiza del noroeste de México', 0),
(171, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Nebulosa', 'Trachemys Nebulosa Hiltoni ', '', '', '', 0),
(172, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Ornata', '-', 'Miden entre 33 y 38 cm de longitud. La cabeza presenta dos manchas alargadas de color amarillo pálido. Presenta caparazón de color verde claro, con ocelos de color ammarillo a naranja o rosado. El plastrón es amarillo claro, con dibujos de color verde claro, que con la edad se van difuminando.', 'Guerrero, Jalisco, Nayarit y Sinaloa', 'Jicotea ornada', 3),
(173, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Scripta', 'Trachemys Scripta Elegans', 'Tortuga con manchas rojas, medidas aproximadas de 20 cm (machos) hasta 40 cm (hembras).', 'USA y México', 'Tortuga japonesa, Tortuga de florida.', 5),
(174, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Scripta', 'Trachemys Scripta Scripta', 'Es una de las tres subespecies de Trachemys scripta que hoy reconoce la ciencia. Son tortugas robustas, que de adultas presentan una coloración general negruzca o pardo oscuro, con líneas muy contrastadas de color amarillo en cara, patas y cola. ', 'USA y México', 'Tortuga de orejas amarillas', 5),
(175, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Scripta', 'Trachemys Scripta Troostii', 'El caparazón es marrón verde oliva con manchas amarillas. Tiene dos salientes redondeados en el borde posterior del caparazón. El caparazón tiene forma ovalada. El plastrón no tiene articulación y es ligeramente menor que el caparazón. Cada uno de los lados inferiores de los marginales tiene un punto.', 'USA', 'Tortuga de Cumberland', 4),
(176, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Stejnegeri', 'Trachemys Stejnegeri Stejnegeri', '', 'Hispaniola, Great Inagua y Puerto Rico', 'Jicotea antillana central', 4),
(177, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Stejnegeri', 'Trachemys Stejnegeri Malonei', '', 'Great Inagua', 'Tortuga de la isla iguana', 0),
(178, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Stejnegeri', 'Trachemys Stejnegeri Vicina', '', '', 'Jicotea dominicana', 0),
(179, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Taylori', '-', '', 'México', 'Jicotea de las cuatro ciénegas', 2),
(180, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Terrapen', '-', '', 'Bahamas y Jamaica', 'Tortuga de Jamaica', 3),
(181, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Venusta', 'Trachemys Venusta Venusta', 'Alcanza hasta 48 cm de longitud recta del caparazón y pesa hasta 5 kg. La cabeza tiene una banda ancha amarilla a cada lado de los ojos; la parte ventral de la cabeza hasta la región gular muestra bandas amarillas longitudinales. Extremidades con un diseño de bandas oscuras y claras.', 'México, Belice, Guatemala, El Salvador, Honduras, Nicaragua, Costa Rica, Panamá, y Colombia.', 'Tortuga de Guadalupe', 0),
(182, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Venusta', 'Trachemys Venusta Cataspila ', '', '', '', 0),
(183, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Venusta', 'Trachemys Venusta Iversoni', '', '', '', 0),
(184, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Venusta', 'Trachemys Venusta Panamensis', '', '', '', 0),
(185, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Emydidae', 'Trachemys', 'Trachemys Yaquia', '-', '', 'México', 'Jicotea Yaqui', 3),
(186, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Batagur', 'Batagur Affinis', '-', '', '', '', 0),
(187, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Batagur', 'Batagur Baska ', '-', '', '', '', 0),
(188, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Batagur', 'Batagur Borneoensis', '-', '', '', '', 0),
(189, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Batagur', 'Batagur Dhongoka', '-', '', '', '', 0),
(190, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Batagur', 'Batagur Kachuga', '-', '', '', '', 0),
(191, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Batagur', 'Batagur Trivittata', '-', '', '', '', 0),
(192, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Amboinensis', '-', '', '', '', 0),
(193, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Aurocapitata', '-', '', '', '', 0),
(194, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Bourreti', '-', '', '', '', 0),
(195, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Chiangmuanensis', '-', '', '', '', 0),
(196, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Cyclornata', '-', '', '', '', 0),
(197, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Evelynae', '-', '', '', '', 0),
(198, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Flavomarginata', '-', '', '', '', 0),
(199, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Galbinifrons', '-', '', '', '', 0),
(200, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Mccordi', '-', '', '', '', 0),
(201, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Mouhotii', '-', '', '', '', 0),
(202, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Pani', '-', '', '', '', 0),
(203, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Picturata', '-', '', '', '', 0),
(204, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Trifasciata', '-', '', '', '', 0),
(205, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Yunnanensis', '-', '', '', '', 0),
(206, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cuora', 'Cuora Zhoui', '-', '', '', '', 0),
(207, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cyclemys', 'Cyclemys Atripons', '-', '', '', '', 0),
(208, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cyclemys', 'Cyclemys Dentata', '-', '', '', '', 0),
(209, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cyclemys', 'Cyclemys Enigmatica', '-', '', '', '', 0),
(210, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cyclemys', 'Cyclemys Fusca', '-', '', '', '', 0),
(211, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cyclemys', 'Cyclemys Gemeli', '-', '', '', '', 0),
(212, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cyclemys', 'Cyclemys Oldhami', '-', '', '', '', 0),
(213, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Cyclemys', 'Cyclemys Pulchristriata', '-', '', '', '', 0),
(214, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Geoclemys', 'Geoclemys Hamiltonii', '-', '', '', '', 0),
(215, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Geoemyda', 'Geoemyda Japonica', '-', '', '', '', 0),
(216, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Geoemyda', 'Geoemyda Spengleri', '-', '', '', '', 0),
(217, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Hardella', 'Hardella Thurjii', '-', '', '', '', 0),
(218, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Heosemys', 'Heosemys Annandalii', '-', '', '', '', 0),
(219, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Heosemys', 'Heosemys Depressa', '-', '', '', '', 0),
(220, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Heosemys', 'Heosemys Grandis', '-', '', '', '', 0),
(221, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Heosemys', 'Heosemys Spinosa', '-', '', '', '', 0),
(222, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Leucocephalon', 'Leucocephalon Yuwonoi', '-', '', '', '', 0),
(223, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Malayemys', 'Malayemys Khoratensis', '-', '', '', '', 0),
(224, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Malayemys', 'Malayemys Macrocephala', '-', '', '', '', 0),
(225, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Malayemys', 'Malayemys Subtrijuga', '-', '', '', '', 0),
(226, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Annamensis', '-', '', '', '', 0),
(227, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Caspica', '-', '', '', '', 0),
(228, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Japonica', '-', '', '', '', 0),
(229, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Leprosa', '-', '', '', '', 0),
(230, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Mutica', '-', '', '', '', 0),
(231, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Nigricans', '-', '', '', '', 0),
(232, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Reevesii', '-', '', '', '', 0),
(233, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Rivulata', '-', '', '', '', 0),
(234, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Mauremys', 'Mauremys Sinensis', '-', '', '', '', 0),
(235, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Melanochelys', 'Melanochelys Tricarinata', '-', '', '', '', 0),
(236, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Melanochelys', 'Melanochelys Trijuga', '-', '', '', '', 0),
(237, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Morenia', 'Morenia Ocellata', '-', '', '', '', 0),
(238, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Morenia', 'Morenia Petersi', '-', '', '', '', 0),
(239, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Notochelys', 'Notochelys Platynota', '-', '', '', '', 0),
(240, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Orlitia', 'Orlitia Borneensis', '-', '', '', '', 0),
(241, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Pangshura', 'Pangshura Smithii', '-', '', '', '', 0),
(242, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Pangshura', 'Pangshura Sylhetensis', '-', '', '', '', 0),
(243, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Pangshura', 'Pangshura Tecta', '-', '', '', '', 0),
(244, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Pangshura', 'Pangshura Tentoria', '-', '', '', '', 0),
(245, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Sacalia', 'Sacalia Bealei', '-', '', '', '', 0),
(246, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Sacalia', 'Sacalia Quadriocellata', '-', '', '', '', 0),
(247, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Siebenrockiella', 'Siebenrockiella Crassicollis', '-', '', '', '', 0),
(248, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Siebenrockiella', 'Siebenrockiella Leytensis', '-', '', '', '', 0),
(249, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Vijayachelys', 'Vijayachelys Silvatica', '-', '', '', '', 0),
(250, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Annulata', '-', '', '', '', 0),
(251, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Areolata', '-', '', '', '', 0),
(252, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Diademata', '-', '', '', '', 0),
(253, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Funerea', '-', '', '', '', 0),
(254, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Melanosterna', '-', '', '', '', 0),
(255, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Nasuta', '-', '', '', '', 0),
(256, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Pulcherrima', 'Rhinoclemmys Pulcherrima Incisa', '', '', '', 0),
(257, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Pulcherrima', 'Rhinoclemmys Pulcherrima Pucherrima', '', '', '', 0),
(258, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Pulcherrima', 'Rhinoclemmys Pulcherrima Rogerbaurbouri', '', '', '', 0),
(259, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Pulcherrima', 'Rhinoclemmys Pulcherrima Manni', '', '', '', 0),
(260, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Punctularia', '-', '', '', '', 0),
(261, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Rubida', 'Rhinoclemmys Rubida Rubida', '', '', '', 0),
(262, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Rubida', 'Rhinoclemmys Rubida Perixntha', '', '', '', 0),
(263, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Geoemydidae', 'Rhinoclemmys', 'Rhinoclemmys Panamaensis', '-', '', '', '', 0),
(264, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Acutum', '-', '', '', '', 0),
(265, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Alamosae', '-', '', '', '', 0),
(266, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Angustipons', '-', '', '', '', 0),
(267, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Baurii', '-', '', '', '', 0),
(268, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Arizonense', '-', '', '', '', 0),
(269, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Chimalhuaca', '-', '', '', '', 0),
(270, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Creaseri', '-', '', '', '', 0),
(271, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Dunni', '-', '', '', '', 0),
(272, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Durangoense', '-', '', '', '', 0),
(273, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Flavescens', '-', '', '', '', 0),
(274, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Herrerai', '-', '', '', '', 0),
(275, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Hirtipes', '-', '', '', '', 0),
(276, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Integrum', '-', '', '', '', 0),
(277, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Leucostomum', '-', '', '', '', 0),
(278, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Oaxacae', '-', '', '', '', 0),
(279, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Pojoaque', '-', '', '', '', 0),
(280, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Scorpioides', '-', '', '', '', 0),
(281, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Sonoriense', '-', '', '', '', 0),
(282, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Kinosternon', 'Kinosternon Subrubrum', '-', '', '', '', 0),
(283, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Sternotherus', 'Sternotherus Carinatus', '-', '', '', '', 0),
(284, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Sternotherus', 'Sternotherus Depressus', '-', '', '', '', 0),
(285, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Sternotherus', 'Sternotherus Minor', '-', '', '', '', 0),
(286, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Sternotherus', 'Sternotherus Odoratus', '-', '', '', '', 0),
(287, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Claudius', 'Claudius Angustatus', '-', '', '', '', 0),
(288, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Staurotypus', 'Staurotypus Salvinii', '-', '', '', '', 0),
(289, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Kinosternidae', 'Staurotypus', 'Staurotypus Triporcatus', '-', '', '', '', 0),
(290, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Barbata', '-', '', '', '', 0),
(291, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Galeata', '-', '', '', '', 0),
(292, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Gehafie', '-', '', '', '', 0),
(293, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Kobe', '-', '', '', '', 0),
(294, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Neumanni', '-', '', '', '', 0),
(295, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Olivacea', '-', '', '', '', 0),
(296, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Schweinfurthi', '-', '', '', '', 0),
(297, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Somalica', '-', '', '', '', 0),
(298, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Subrufa', '-', '', '', '', 0),
(299, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelomedusa', 'Pelomedusa Variabilis', '-', '', '', '', 0),
(300, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Adansonii', '-', '', '', '', 0),
(301, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Bechuanicus', '-', '', '', '', 0),
(302, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Broadleyi', '-', '', '', '', 0),
(303, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Carinatus', '-', '', '', '', 0),
(304, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Castaneus', '-', '', '', '', 0),
(305, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Castanoides', 'Pelusios Castanoides Castanoides', '', '', '', 0),
(306, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Castanoides', 'Pelusios Castanoides Intergularis', '', '', '', 0),
(307, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Chapini', '-', '', '', '', 0),
(308, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Cupulatta', '-', '', '', '', 0),
(309, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Gabonensis', '-', '', '', '', 0),
(310, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Marani', '-', '', '', '', 0),
(311, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Nanus', '-', '', '', '', 0),
(312, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Niger', '-', '', '', '', 0),
(313, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Rhodesianus', '-', '', '', '', 0),
(314, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Seychellensis', '-', '', '', '', 0),
(315, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Sinuatus', '-', '', '', '', 0),
(316, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Subniger', 'Pelusios Subniger Subniger', '', '', '', 0),
(317, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Subniger', 'Pelusios Subniger Parietalis', '', '', '', 0),
(318, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Upembae', '-', '', '', '', 0),
(319, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Williamsi', 'Pelusios Williamsi Williamsi', '', '', '', 0),
(320, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Williamsi', 'Pelusios Williamsi Laurenti', '', '', '', 0),
(321, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Pelomedusidae', 'Pelusios', 'Pelusios Williamsi', 'Pelusios Williamsi Lutescens', '', '', '', 0),
(322, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Platysternidae', 'Platysternon', 'Platysternon Megacephalum', 'Platysternon Megacephalum Megacephalum', '', '', '', 0),
(323, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Platysternidae', 'Platysternon', 'Platysternon Megacephalum', 'Platysternon Megacephalum Peguense', '', '', '', 0),
(324, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Platysternidae', 'Platysternon', 'Platysternon megacephalum', 'Platysternon Megacephalum Shiui', '', '', '', 0),
(325, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Erymnochelys', 'Erymnochelys Madagascariensis', '-', '', '', '', 0),
(326, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Peltocephalus', 'Peltocephalus Dumerilianus', '-', '', '', '', 0),
(327, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Bassleri', '-', '', '', '', 0),
(328, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Erythrocephala', '-', '', '', '', 0),
(329, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Expansa', '-', '', '', '', 0),
(330, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Lewyana', '-', '', '', '', 0),
(331, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Sextuberculata', '-', '', '', '', 0),
(332, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Medemi', '-', '', '', '', 0),
(333, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Pritchardi', '-', '', '', '', 0),
(334, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Unifilis', '-', '', '', '', 0),
(335, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Podocnemididae', 'Podocnemis', 'Podocnemis Vogli', '-', '', '', '', 0),
(336, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Aldabrachelys', 'Aldabrachelys Abrupta', '-', '', '', '', 0),
(337, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Aldabrachelys', 'Aldabrachelys Gigantea', '-', '', '', '', 0),
(338, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Aldabrachelys', 'Aldabrachelys Grandidieri', '-', '', '', '', 0),
(339, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Astrochelys', 'Astrochelys Radiata', '-', '', '', '', 0),
(340, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Astrochelys', 'Astrochelys Yniphora', '-', '', '', '', 0),
(341, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Centrochelys', 'Centrochelys Sulcata', '-', '', '', '', 0),
(342, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Abingdonii', '-', '', '', '', 0),
(343, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Becki', '-', '', '', '', 0),
(344, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Carbonaria', '-', '', '', '', 0),
(345, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Chathamensis', '-', '', '', '', 0),
(346, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Chilensis', '-', '', '', '', 0),
(347, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Darwini', '-', '', '', '', 0),
(348, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Denticulata', '-', '', '', '', 0),
(349, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Donfaustoi', '-', '', '', '', 0),
(350, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Duncanensis', '-', '', '', '', 0),
(351, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Hoodensis', '-', '', '', '', 0),
(352, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Nigra', '-', '', '', '', 0),
(353, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Phantastica', '-', '', '', '', 0),
(354, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Porteri', '-', '', '', '', 0),
(355, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chelonoidis', 'Chelonoidis Vicina', '-', '', '', '', 0),
(356, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Chersina', 'Chersina Angulata', '-', '', '', '', 0),
(357, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Geochelone', 'Geochelone Elegans', '-', '', '', '', 0),
(358, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Geochelone', 'Geochelone Platynota', '-', '', '', '', 0),
(359, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Gopherus', 'Gopherus Agassizii', '-', '', '', '', 0),
(360, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Gopherus', 'Gopherus Berlandieri', '-', '', '', '', 0),
(361, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Gopherus', 'Gopherus Evgoodei', '-', '', '', '', 0),
(362, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Gopherus', 'Gopherus Flavomarginatus', '-', '', '', '', 0),
(363, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Gopherus', 'Gopherus Morafkai', '-', '', '', '', 0),
(364, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Gopherus', 'Gopherus Polyphemus', '-', '', '', '', 0),
(365, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Homopus', 'Homopus Areolatus', '-', '', '', '', 0),
(366, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Homopus', 'Homopus Boulengeri', '-', '', '', '', 0),
(367, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Homopus', 'Homopus Femoralis', '-', '', '', '', 0),
(368, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Homopus', 'Homopus Signatus', '-', '', '', '', 0),
(369, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Homopus', 'Homopus Solus', '-', '', '', '', 0),
(370, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Indotestudo', 'Indotestudo Elongata', '-', '', '', '', 0),
(371, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Indotestudo', 'Indotestudo Forstenii ', '-', '', '', '', 0),
(372, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Indotestudo', 'Indotestudo Travancorica', '-', '', '', '', 0),
(373, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Kinixys', 'Kinixys Belliana', '-', '', '', '', 0),
(374, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Kinixys', 'Kinixys Erosa', '-', '', '', '', 0),
(375, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Kinixys', 'Kinixys Homeana', '-', '', '', '', 0),
(376, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Kinixys', 'Kinixys Lobatsiana', '-', '', '', '', 0),
(377, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Kinixys', 'Kinixys Natalensis', '-', '', '', '', 0),
(378, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Kinixys', 'Kinixys Nogueyi', '-', '', '', '', 0),
(379, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Kinixys', 'Kinixys Spekii', '-', '', '', '', 0),
(380, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Kinixys', 'Kinixys Zombensis', '-', '', '', '', 0),
(381, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Malacochersus', 'Malacochersus Tornieri', '-', '', '', '', 0),
(382, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Manouria', 'Manouria Emys', '-', '', '', '', 0),
(383, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Manouria', 'Manouria Impressa', '-', '', '', '', 0),
(384, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Psammobates', 'Psammobates Geometricus', '-', '', '', '', 0),
(385, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Psammobates', 'Psammobates Oculiferus', '-', '', '', '', 0),
(386, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Psammobates', 'Psammobates Tentorius', '-', '', '', '', 0),
(387, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Pyxis', 'Pyxis Arachnoides', '-', '', '', '', 0),
(388, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Pyxis', 'Pyxis Planicauda', '-', '', '', '', 0),
(389, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Stigmochelys', 'Stigmochelys Pardalis', '-', '', '', '', 0),
(390, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Testudo', 'Testudo Graeca', '-', '', '', '', 0),
(391, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Testudo', 'Testudo Hermanni', '-', '', '', '', 0),
(392, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Testudo', 'Testudo Horsfieldii', '-', '', '', '', 0);
INSERT INTO `taxonomia` (`id`, `dominio`, `reino`, `subreino`, `superfilo`, `filo`, `subfilo`, `superclase`, `clase`, `subclase`, `orden`, `familia`, `genero`, `especie`, `subespecie`, `descripcion`, `pais`, `apodo`, `grado_amenaza`) VALUES
(393, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Testudo', 'Testudo Kleinmanni', '-', '', '', '', 0),
(394, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Testudinidae', 'Testudo', 'Testudo Marginata', '-', '', '', '', 0),
(395, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Cyclanorbis', 'Cyclanorbis Elegans', '-', '', '', '', 0),
(396, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Cyclanorbis', 'Cyclanorbis Senegalensis', '-', '', '', '', 0),
(397, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Cyclanorbis', 'Cyclanorbis Turkanensis', '-', '', '', '', 0),
(398, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Cycloderma', 'Cycloderma Aubryi', '-', '', '', '', 0),
(399, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Cycloderma', 'Cycloderma Frenatum', '-', '', '', '', 0),
(400, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Lissemys', 'Lissemys Ceylonensis', '-', '', '', '', 0),
(401, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Lissemys', 'Lissemys Punctata', '-', '', '', '', 0),
(402, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Lissemys', 'Lissemys Scutata', '-', '', '', '', 0),
(403, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Amyda', 'Amyda Cartilaginea', '-', '', '', '', 0),
(404, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Amyda', 'Amyda Ornata', '-', '', '', '', 0),
(405, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Apalone', 'Apalone Atra', '-', '', '', '', 0),
(406, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Apalone', 'Apalone Ferox', '-', '', '', '', 0),
(407, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Apalone', 'Apalone Mutica', '-', '', '', '', 0),
(408, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Apalone', 'Apalone Spinifera', '-', '', '', '', 0),
(409, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Chitra', 'Chitra Chitra', 'Chitra Chitra Chitra', '', '', '', 0),
(410, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Chitra', 'Chitra Chitra', 'Chitra Chitra Javanensis', '', '', '', 0),
(411, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Chitra', 'Chitra Indica', '-', '', '', '', 0),
(412, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Chitra', 'Chitra Vandijki', '-', '', '', '', 0),
(413, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Dogania', 'Dogania Subplana', '-', '', '', '', 0),
(414, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Nilssonia', 'Aspideretes Gangeticus', '-', '', '', '', 0),
(415, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Nilssonia', 'Aspideretes Hurum', '-', '', '', '', 0),
(416, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Nilssonia', 'Aspideretes Leithii', '-', '', '', '', 0),
(417, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Nilssonia', 'Aspideretes Nigricans', '-', '', '', '', 0),
(418, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Palea', 'Palea Steindachneri', '-', '', '', '', 0),
(419, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Pelochelys', 'Pelochelys Briboni', '-', '', '', '', 0),
(420, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Pelochelys', 'Pelochelys Cantorii', '-', '', '', '', 0),
(421, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Pelochelys', 'Pelochelys Signifera', '-', '', '', '', 0),
(422, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Pelodiscus', 'Pelodiscus Axenaria', '-', '', '', '', 0),
(423, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Pelodiscus', 'Pelodiscus Maackii', '-', '', '', '', 0),
(424, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Pelodiscus', 'Pelodiscus Parviformis', '-', '', '', '', 0),
(425, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Pelodiscus', 'Pelodiscus Sinensis', '-', '', '', '', 0),
(426, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Pelodiscus', 'Pelodiscus Variegatus', '-', '', '', '', 0),
(427, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Rafetus', 'Rafetus Euphraticus', '-', '', '', '', 0),
(428, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Rafetus', 'Rafetus Swinhoei', '-', '', '', '', 0),
(429, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Rafetus', 'Rafetus Leloi', '-', '', '', '', 0),
(430, 'Eukaryota', 'Animalia', 'Eumetazoa', 'Deuterostomia', 'Chordata', 'Vertebrata', 'Tetrapoda', 'Reptilia', 'Diapsida', 'Testudines', 'Trionychidae', 'Trionyx', 'Trionyx Triunguis', '-', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `foto_perfil` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre_usuario`, `email`, `foto_perfil`, `password`) VALUES
(1, 'Mike_EDD', 'mikeed1998@gmail.com', 'default.jpg', '$2b$12$XeSdVGKTLZi1M95S2VqCseKtGGqF75oWolhg0ZLZp9WcjDfuRrsg2'),
(2, 'Meni', 'fernanda.delgado@gmail.com', 'default.jpg', '$2b$12$4fTavd6Eht3ricn7ymS7aerVPytTn9Cv2aBBzj0IHSnsXWUubtMyy'),
(3, 'flo2', 'florence2@hotmail.com', 'default.jpg', '$2b$12$X9m2HM/TI2fSKS5.RXPMReob2RxTiDILTDAEalS1xTmmjNFcAbQsK'),
(4, 'Eduardo23', 'leonardo.eduardo@gmail.com', 'default.jpg', '$2b$12$DP699y8nzgKJKLHb4qTHoeOAnkmwss/bw.HZDgW.GS3y9C4.KJoFi'),
(5, 'hectoRR', 'hector.alberto@hotmail.com', 'default.jpg', '$2b$12$hvQkStPpWt31.ww/vUWmuOONKC24QTs26/l5cdjMQZNTt9erNtNU6'),
(6, 'yoliU2', 'yoland1978@gmail.com', '0dac32b474f84ae2.jpg', '$2b$12$.WH/RXx6d.cg7093FndIyubG/5qC6oUE0vS6HNPPMWzl3DuYJ9HpW');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peticion_taxonomia`
--
ALTER TABLE `peticion_taxonomia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `publicacion_votada`
--
ALTER TABLE `publicacion_votada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_publicacion` (`id_publicacion`);

--
-- Indices de la tabla `taxonomia`
--
ALTER TABLE `taxonomia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peticion_taxonomia`
--
ALTER TABLE `peticion_taxonomia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `publicacion_votada`
--
ALTER TABLE `publicacion_votada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `taxonomia`
--
ALTER TABLE `taxonomia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `publicacion_votada`
--
ALTER TABLE `publicacion_votada`
  ADD CONSTRAINT `publicacion_votada_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `publicacion_votada_ibfk_2` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
