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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/imagenes/gmail_logo.png',
            fit: BoxFit.cover,
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
    );
  }
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Foto de perfil y nombre del usuario
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 38), // Ajusta el espacio de relleno según tus necesidades
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/perfil.jpg'), // Imagen de perfil
            ),
            title: Text('Pablo69_'),
              subtitle: Text('''Amante de los Viajes y aventuras ✈️🗺️
Explorando el mundo 🌎✨
🗓️ ¡Siempre buscando la próxima escapada!
💼 Trabajando en hacer realidad mi sueño de viajar por el mundo.
🌟 Compartiendo consejos de viaje, guías de destinos y recomendaciones de lugares imperdibles 🗺️
''',
                style: TextStyle(fontSize: 12.0), // Ajusta el tamaño de fuente a 20.0
              )
          ),
          // Número de seguidores y publicaciones
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 90, vertical: 170),
            title: Text('Seguidores'),
            subtitle: Text('10k'), // Número de seguidores

          ),
          ListTile(
            title: Text('Publicaciones'),
            subtitle: Text('10'), // Número de publicaciones
          ),

          GridView.count(
          crossAxisCount: 1, // Una foto por fila
          children: [
            Container(

              margin: EdgeInsets.all(10.0), // Margen de 10 en todos los lados del contenedor
              padding: EdgeInsets.all(5.0), // Padding de 5 en todos los lados del contenedor
              child: Image.asset('assets/imagenes/post1.jpg'), // Ruta de la primera foto
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5.0),
              child: Image.asset('assets/imagenes/post2.jpg'), // Ruta de la segunda foto
            ),
          ],
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
                      // Acción al presionar el botón "profile"
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
