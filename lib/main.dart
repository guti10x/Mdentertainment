import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: {
        '/registration': (context) => RegistrationPage(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';

  void login() {
    // Aquí puedes agregar la lógica para verificar el usuario y la contraseña
    if (username == 'usuario' && password == 'contrasena') {
      // Usuario y contraseña correctos
      // Realizar la acción deseada, como navegar a la siguiente pantalla
    } else {
      // Usuario o contraseña incorrectos
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                Icon(
                  Icons.error,
                  color: Colors.red,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Error',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            content: Text(
              'Usuario no encontrado',
              style: TextStyle(fontSize: 16.0),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
                child: Text('Cerrar'),
              ),
            ],
          );
        },
      );
    }
  }

  void goToRegistrationPage() {
    Navigator.pushNamed(context, '/registration');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo de la aplicación
              Image.asset(
                'assets/imagenes/logo.jpg',
                width: 200.0,
                height: 200.0,
              ),
              SizedBox(height: 20.0),
              // Campo de entrada de usuario
              TextField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  prefixIcon: Icon(Icons.person),
                  fillColor: Colors.grey[300],
                  filled: true,
                ),
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
              ),
              SizedBox(height: 10.0),
              // Campo de entrada de contraseña
              TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  prefixIcon: Icon(Icons.lock),
                  fillColor: Colors.grey[300],
                  filled: true,
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              // Botón de inicio de sesión
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VentanaHome()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  onPrimary: Colors.white,
                ),
                child: Text('Iniciar Sesión'),
              ),
              SizedBox(height: 30.0),
              // Botón "No tiene cuenta aún?"
              TextButton(
                onPressed: goToRegistrationPage,
                child: Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'No tiene cuenta aún?',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Texto "By signing up, you agree with the [Terms of Service] and [Privacy Policy]" con corchetes rojos
              Text(
                'By signing up, you agree with the ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '[Terms of Service]',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12.0,
                  ),
                  children: [
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: '[Privacy Policy]',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrarse'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            Text(
              'Registro de usuario',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Icon(Icons.star, color: Colors.red, size: 14.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Primer apellido',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Icon(Icons.star, color: Colors.red, size: 14.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Segundo apellido',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Icon(Icons.star, color: Colors.red, size: 14.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Icon(Icons.star, color: Colors.red, size: 14.0),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            SizedBox(
              height: 40.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VentanaHome()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Text(
                  'Registrarse',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VentanaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildVideoCard(context, 'assets/imagenes/scroll1.mp4','assets/imagenes/profile2.jpeg', 'Adry_', 'Fin de semana en Benidorm', '¡Sol, playa, diversión y relax te esperan! #fyp'),
          _buildVideoCard(context, 'assets/imagenes/scroll1.mp4','assets/imagenes/profile3.jpeg', 'Nano33', 'Arenal sound', 'Consulta  toda la información del festival en la web arenalsound.com'),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Acción al presionar el botón "home"
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VentanaSearch()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VentanaUpload()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VentanaProfile()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton:
      Padding(padding: EdgeInsets.only(top: 128.0, right: 0.0),
        child: Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton(
            backgroundColor: Colors.purple,
            child: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ventanaNotificaciones()),
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget _buildVideoCard(BuildContext context, String videoPath, String imagePath, String username, String title, String description) {
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;

  _videoPlayerController = VideoPlayerController.asset(videoPath);
  _chewieController = ChewieController(
    videoPlayerController: _videoPlayerController,
    autoInitialize: true,
    looping: true,
    showControls: true,
  );
  return SizedBox(
      width: 500,
      height: 400,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 16),

    child: Stack(

      children: [
        Chewie(
          controller: _chewieController,
        ),
        Positioned(
          left: 16,
          bottom: 16,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(imagePath),
                  ),
                  SizedBox(width: 8),
                  Text(
                    username,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      // Acción cuando se presiona el botón de corazón
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.event),
                    onPressed: () {
                      // Acción cuando se presiona el botón de apuntarse a un evento
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      // Acción cuando se presiona el botón de compartir
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
      ),
  );
}


class VentanaSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo de la imagen
          Positioned.fill(
            child: Image.asset(
              'assets/imagenes/map.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Contenido de la interfaz
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Campo de búsqueda de ciudades
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.9),
                      hintText: 'Buscar ciudad',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Botón de explorar aquí
                  ElevatedButton(
                    onPressed: () {
                      // Lógica para explorar la ciudad aquí
                    },
                    child: Text('Explorar aquí'),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaHome()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Acción al presionar el botón "search"
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaUpload()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaProfile()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VentanaUpload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaHome()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaSearch()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      // Acción al presionar el botón "add"
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaProfile()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 60,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 140, // Altura del contenedor en blanco para ajustar el espaciado
                    color: Colors.white,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Localidad'),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Evento'),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Fecha'),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Hora'),
                  ),
                  Container(
                    height: 20, // Altura del contenedor en blanco para ajustar el espaciado
                    color: Colors.white,
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text('Cargar imagenes', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        // Acción al presionar el botón "Cargar imagen"
                      },
                    ),
                  ),
                  Container(
                    height: 40, // Altura del contenedor en blanco para ajustar el espaciado
                    color: Colors.white,
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text('Subir evento', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        // Acción al presionar el botón "Subir evento"
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VentanaProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 28.0, right: 29.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/imagenes/profile.jpeg'),
                      ),
                    ),
                    SizedBox(height: 16.0),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seguidores: 120',
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 15, // Altura del contenedor en blanco para ajustar el espaciado
                          color: Colors.white,
                        ),
                        Text(
                          'Eventos: 2',
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                const Text(
                  'Pablo_69',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 16.0),
                Text(
                  '• Amante de los Viajes y aventuras ✈️🗺️',
                  style: TextStyle(fontSize: 16.0),
                ),
                Container(
                  height: 7, // Altura del contenedor en blanco para ajustar el espaciado
                  color: Colors.white,
                ),
                Text(
                  'Explorando el mundo 🌎✨',
                  style: TextStyle(fontSize: 16.0),
                ),
                Container(
                  height: 7, // Altura del contenedor en blanco para ajustar el espaciado
                  color: Colors.white,
                ),
                Text(
                  '• ¡Siempre buscando la próxima escapada! 🗓️',
                  style: TextStyle(fontSize: 16.0),
                ),
                Container(
                  height: 7, // Altura del contenedor en blanco para ajustar el espaciado
                  color: Colors.white,
                ),
                Text(
                  '• Trabajando en hacer realidad mi sueño de viajar por el mundo.💼 ',
                  style: TextStyle(fontSize: 16.0),
                ),
                Container(
                  height: 7, // Altura del contenedor en blanco para ajustar el espaciado
                  color: Colors.white,
                ),
                Text(
                  '• Explorando el mundo 🌎✨',
                  style: TextStyle(fontSize: 16.0),
                ),
                Container(
                  height: 7, // Altura del contenedor en blanco para ajustar el espaciado
                  color: Colors.white,
                ),
                Text(
                  '• Compartiendo consejos de viaje, guías de destinos y recomendaciones de lugares imperdibles 🗺️🌟 ',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          Divider(), // Línea divisora para separar el perfil del grid de fotos
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              padding: EdgeInsets.all(16.0),
               children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventWindow()),
                      );
                    },
                    child: Image.asset('assets/imagenes/post2.jpg'),
                  ),
                   Image.asset('ruta_de_la_imagen_2'),
                   Image.asset('ruta_de_la_imagen_3'),
          ],
          ),

          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      // Acción al presionar el botón "home"
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaSearch()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaUpload()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VentanaProfile()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      floatingActionButton:
      Padding(padding: EdgeInsets.only(top: 68.0, right: 0.0),
        child: Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton(
            backgroundColor: Colors.purple,
            child: Icon(Icons.settings),
            onPressed: () {
              // Acción al presionar el botón de configuración
            },
          ),
        ),
      ),
    );
  }
}
class EventWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Center(
            child: Text(
              'Picnic en el Retiro',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset(
                  'assets/imagenes/post1.jpg',
                  width: 310,
                  height: 200,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lugar:',
              style: TextStyle(fontSize: 18, color: Colors.purple),
            ),
            SizedBox(height: 8),
            Text(
              'Parque del Retiro, Madrid',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Fecha:',
              style: TextStyle(fontSize: 18, color: Colors.purple),
            ),
            SizedBox(height: 8),
            Text(
              '5/6/2023',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Descripción:',
              style: TextStyle(fontSize: 18, color: Colors.purple),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                'El Parque del Retiro es un lugar icónico y popular en Madrid. Ofrece un ambiente tranquilo y relajante, perfecto para pasear, correr o simplemente disfrutar del aire libre. Con sus hermosos jardines, fuentes y estanques, es un plan perfecto para cualquier persona que busque pasar tiempo de calidad con amigos.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Reseñas:',
              style: TextStyle(fontSize: 18, color: Colors.purple),
            ),

            SizedBox(height: 16),
            RichText(
              text: TextSpan(
                text: 'Oussama89_:\n',
                style: TextStyle(fontSize: 18, color: Colors.blue),
                children: [
                  TextSpan(
                    text: 'Los jardines  son impresionantes!!!!!!',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            RichText(
              text: TextSpan(
                text: 'guti10_:\n',
                style: TextStyle(fontSize: 18, color: Colors.blue),
                children: [
                  TextSpan(
                    text: 'Un lugar relajante donde desconectar',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ventanaNotificaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NOTIFICACIONES',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.notifications),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ESTA SEMANA:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Tú evento ha sido publicado con éxito',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Juan te escribió un correo electrónico',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Anteriores:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              for (int i = 0; i < 5; i++)
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Tú evento ha sido publicado con éxito',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Miriam ha apuntado a tu evento',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
