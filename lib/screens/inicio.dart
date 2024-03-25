import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/logotipo.png'),
              Container(
                height: 500,
                width: 325,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 55, 64, 70),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Pausas Activas',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Menú',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildIconWithDescription(
                          'assets/images/ejercicio.png',
                          'Activos',
                          context,
                        ),
                        _buildIconWithDescription(
                          'assets/images/triangulo.png',
                          'Pasivos',
                          context,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildIconWithDescription(
                          'assets/images/empresario.png',
                          'Cuerpo',
                          context,
                        ),
                        _buildIconWithDescription(
                          'assets/images/tiempo.png',
                          'Alarma',
                          context,
                        ),
                      ],
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

  Widget _buildIconWithDescription(
    String imagePath,
    String description,
    BuildContext context,
  ) {
    return Container(
      margin: EdgeInsets.all(8), // Margen alrededor del contenedor
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Borde redondeado
        border: Border.all(
            color: const Color.fromARGB(255, 113, 113, 113),
            width: 4), // Borde blanco
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          SizedBox(height: 2), // Espacio entre la imagen y el texto
          Text(
            description,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
