import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mdentertainment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),

            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            ElevatedButton.icon(
              onPressed: () {
                // Lógica de inicio de sesión con Google
              },
              icon: Image.asset(
                'assets/imagenes/gmail_logo.png',
                width: 24.0,
                height: 24.0,
              ),
              label: Text('Registrarse con Google'),
            ),

            SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                // Login logic with Facebook
              },
              icon: Image.asset(
                'assets/imagenes/facebook_logo.png',
                width: 24.0,
                height: 24.0,
              ),
              label: Text('Iniciar sesión con Facebook'),
            ),


            SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                // Lógica de inicio de sesión con Apple
              },icon: Image.asset(
              'assets/imagenes/iPhone_logo.png',
              width: 24.0,
              height: 24.0,
            ),
              label: Text('Iniciar sesión con Apple'),
            ),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Lógica de registro
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.blue,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text(
                  'No tienes cuenta aún, regístrate',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
