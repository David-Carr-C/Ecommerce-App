import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/screens/payments/payments.dart';

const items = [
  {
    'title': "Teclado",
    'description':
        '''Diseño Moderno y Elegante: Con un acabado en color negro mate y una carcasa de aluminio pulido, este teclado no solo es una herramienta funcional sino también una pieza atractiva para tu escritorio.
  Teclas Mecánicas: Equipado con interruptores mecánicos de alta calidad que ofrecen una respuesta táctil y sonora satisfactoria con cada pulsación.
  Retroiluminación LED: Personaliza tu entorno de trabajo con retroiluminación LED ajustable, que facilita la escritura en condiciones de poca luz.
  Construcción Duradera: Fabricado con materiales premium que aseguran resistencia y longevidad, diseñado para soportar el uso diario intensivo.
  Conectividad USB: Conéctalo fácilmente a tu PC o laptop con su cable USB removible, asegurando una conexión estable y rápida.''',
    'price': 100.00,
    'phrase': "Los mejores productos!",
    'items': ['assets/keyboard.jpg', 'assets/keyboard2.jpg'],
    'starsCount': 4,
  },
  {
    'title': "Monitor",
    'description':
        '''Pantalla Ultra HD 4K: Disfruta de una resolución impresionante de 3840x2160 píxeles que ofrece imágenes nítidas y claras, ideal para edición de vídeo, juegos y trabajo profesional.
  Tecnología IPS: Con la tecnología de panel IPS, obtienes ángulos de visión amplios y colores precisos desde cualquier posición, asegurando una calidad de imagen superior.
  Frecuencia de Actualización de 144Hz: Experimenta una acción fluida y sin interrupciones gracias a la alta frecuencia de actualización, perfecta para juegos rápidos y exigentes.
  Tiempo de Respuesta de 1ms: Minimiza el desenfoque de movimiento y disfruta de una experiencia de juego sin retrasos con un tiempo de respuesta ultra rápido.
  Conectividad Versátil: Equipado con múltiples puertos HDMI, DisplayPort y USB, permitiendo conectar diversos dispositivos de forma sencilla y eficiente.
  Diseño Ergonómico: Ajusta la altura, inclinación y giro del monitor para una comodidad óptima durante largas sesiones de trabajo o juego.
  Funciones de Cuidado Ocular: Reduce la fatiga visual con tecnologías de reducción de luz azul y anti-parpadeo, creando un entorno de visualización más saludable.''',
    'price': 300.00,
    'phrase': "Calidad y rendimiento excepcionales!",
    'items': [
      'assets/monitor.jpeg',
      'assets/monitor2.jpeg',
      'assets/monitor3.jpeg'
    ],
    'starsCount': 3,
  },
  {
    'title': "Auriculares",
    'description':
        '''Calidad de Sonido Superior: Disfruta de un sonido claro y nítido con bajos profundos y agudos cristalinos, gracias a los drivers de alta definición incorporados.
  Cancelación Activa de Ruido: Elimina el ruido ambiental con la avanzada tecnología de cancelación activa de ruido, ideal para concentrarte en tu música o llamadas en entornos ruidosos.
  Conexión Bluetooth 5.0: Conéctate de forma inalámbrica con una señal estable y de largo alcance utilizando la tecnología Bluetooth 5.0, compatible con una amplia gama de dispositivos.
  Batería de Larga Duración: Hasta 30 horas de reproducción continua con una sola carga, y carga rápida que proporciona 5 horas de uso con solo 15 minutos de carga.
  Diseño Ergonómico y Plegable: Ligero y cómodo, con almohadillas suaves y diadema ajustable, además de un diseño plegable para facilitar su almacenamiento y transporte.
  Controles Táctiles: Controla tu música, volumen y llamadas con un simple toque, gracias a los intuitivos controles táctiles integrados en los auriculares.
  Asistente de Voz Integrado: Accede fácilmente a tu asistente de voz preferido, como Siri o Google Assistant, para realizar tareas rápidas y sencillas sin usar las manos.''',
    'price': 150.00,
    'phrase': "Inmersión total en cada sonido!",
    'items': ['assets/headphones2.jpeg', 'assets/headphones.jpeg'],
    'starsCount': 3,
  },
  {
    'title': "Camisa de Algodón",
    'description':
        '''Material de Alta Calidad: Fabricada con 100% algodón, esta camisa ofrece una suavidad y comodidad incomparables, ideal para uso diario.
  Diseño Clásico: Con un corte clásico y detalles elegantes, esta camisa es perfecta tanto para ocasiones formales como casuales.
  Variedad de Colores: Disponible en una amplia gama de colores para que puedas encontrar la opción que mejor se adapte a tu estilo.
  Fácil de Cuidar: Resistente a las arrugas y fácil de planchar, esta camisa es práctica y conveniente para el ajetreo diario.
  Ajuste Perfecto: Diseñada para ofrecer un ajuste cómodo y favorecedor para todas las tallas y tipos de cuerpo.
  Bolsillo Frontal: Incluye un bolsillo frontal funcional para mayor conveniencia y estilo.''',
    'price': 40.00,
    'phrase': "Estilo y confort en una prenda!",
    'items': ['assets/shirt.jpeg', 'assets/shirt2.jpeg', 'assets/shirt3.jpeg'],
    'starsCount': 4,
  },
  {
    'title': "Abrigo de Invierno",
    'description':
        '''Calidez Superior: Este abrigo está diseñado para ofrecer la máxima calidez gracias a su forro de lana y acolchado térmico, ideal para las frías jornadas invernales.
  Diseño Elegante: Con un estilo clásico y sofisticado, este abrigo es perfecto tanto para ocasiones formales como casuales, combinando funcionalidad y moda.
  Impermeable y Resistente al Viento: Fabricado con materiales de alta calidad que repelen el agua y bloquean el viento, manteniéndote seco y cómodo.
  Bolsillos Funcionales: Equipado con múltiples bolsillos exteriores e interiores, ofreciendo amplio espacio de almacenamiento para tus pertenencias esenciales.
  Capucha Desmontable: Viene con una capucha ajustable y desmontable, proporcionando versatilidad para diferentes condiciones climáticas.
  Ajuste Cómodo: Disponible en varias tallas y con ajustes en cintura y puños, asegurando un ajuste perfecto y personalizado para cada usuario.''',
    'price': 120.00,
    'phrase': "Protección y estilo en cada temporada!",
    'items': ['assets/coat.jpeg', 'assets/coat2.jpeg'],
    'starsCount': 4,
  }
];

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int quantity = 0;
  Map<String, dynamic> currentItem = items[Random().nextInt(items.length)];

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.48,
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.5,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: (currentItem['items'] as List<dynamic>)
                  .map((i) => Container(
                        margin: const EdgeInsets.all(5.0),
                        child: Image.asset(i),
                      ))
                  .toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.33,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentItem['title'],
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 180,
                          child: Text(
                            currentItem['description'],
                            softWrap: true,
                          ),
                        ),
                        Text(
                          'Precio: \$${currentItem['price']}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            ...List.generate(
                              currentItem['starsCount'] as int,
                              (index) => const Icon(Icons.star),
                            ),
                            ...List.generate(
                              5 - (currentItem['starsCount'] as int),
                              (index) => const Icon(Icons.star_border),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.33,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Cantidad',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(30, 30),
                              ),
                              onPressed: decrement,
                              child: const Text('-'),
                            ),
                            const SizedBox(width: 10),
                            Text('$quantity'),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(30, 30),
                              ),
                              onPressed: increment,
                              child: const Text('+'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Color',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Tamaño',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text('S'),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text('M'),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text('L'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.08,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '${currentItem['phrase']}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Precio total: \$${quantity * (currentItem['price'] as double)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.04,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (quantity == 0) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            surfaceTintColor: Colors.grey[300],
                            backgroundColor: Colors.white,
                            title: const Text('Error'),
                            content: const Text(
                                'Debes seleccionar al menos un producto para comprar.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Aceptar'),
                              ),
                            ],
                          );
                        },
                      );
                      return;
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Payments(
                              currentItem: currentItem, quantity: quantity)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.grey[300],
                  ),
                  child: const Text('Comprar'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
