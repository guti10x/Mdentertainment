import 'package:flutter/material.dart';

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
                'assets/MDentertainment.png',
                width: 100.0,
                height: 100.0,
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
                    MaterialPageRoute(builder: (context) => VentanaUpload()),
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
          _buildImageCard(context, 'assets/imagenes/gmail_logo.png', 'Usuario 1', 'Título 1', 'Descripción 1'),
          _buildImageCard(context, 'assets/imagenes/gmail_logo.png', 'Usuario 2', 'Título 2', 'Descripción 2'),
          _buildImageCard(context, 'assets/imagenes/gmail_logo.png', 'Usuario 3', 'Título 3', 'Descripción 3'),
          _buildImageCard(context, 'assets/imagenes/gmail_logo.png', 'Usuario 1', 'Título 1', 'Descripción 1'),
          _buildImageCard(context, 'assets/imagenes/gmail_logo.png', 'Usuario 2', 'Título 2', 'Descripción 2'),
          _buildImageCard(context, 'assets/imagenes/gmail_logo.png', 'Usuario 3', 'Título 3', 'Descripción 3'),
          // Agrega más llamadas a _buildImageCard para mostrar más imágenes
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
    );
  }
}

  Widget _buildImageCard(BuildContext context, String imagePath, String username, String title, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        padding: EdgeInsets.all(8),
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
    );
  }

  class VentanaSearch extends StatelessWidget {
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
              crossAxisCount: 1, // Número de fotos por fila
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              padding: EdgeInsets.all(16.0),
              children: [
                Image.asset('assets/imagenes/post2.jpg'), // Reemplaza con la ruta de la imagen 1
                Image.asset('ruta_de_la_imagen_2'), // Reemplaza con la ruta de la imagen 2
                Image.asset('ruta_de_la_imagen_3'), // Reemplaza con la ruta de la imagen 3
                // Agrega más imágenes según sea necesario
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