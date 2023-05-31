import 'package:flutter/material.dart';

class InstagramWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/instagram_logo.png', // Reemplaza con la ruta de tu logo de Instagram
          height: 30,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Acción al presionar el botón de mensajes
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Cantidad de publicaciones, reemplaza con tus datos
        itemBuilder: (context, index) {
          // Construir cada elemento de la lista de publicaciones
          return Container(
            // Estilo de cada publicación
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Contenido de la publicación
                // Aquí puedes agregar las imágenes, texto, botones, etc.
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Índice de la pestaña actual, reemplaza con tus datos
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Publicar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
