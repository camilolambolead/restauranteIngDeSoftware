import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_restaurante/vistas/Comentarios.dart';
import 'package:proyecto_restaurante/vistas/Menu.dart';
import 'package:proyecto_restaurante/vistas/Pedidos.dart';
import 'package:proyecto_restaurante/vistas/Usuarios.dart';
import 'package:proyecto_restaurante/widgets/wcWidgets.dart';
import 'package:proyecto_restaurante/vistas/Reservas.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  double screenHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: 280,
          height: screenHeight * 0.9,
          decoration: BoxDecoration(
            color: const Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              const Image(image: AssetImage("assets/logo2.png")),
              const Spacer(flex: 1),
              subTitleText(
                  "Esta aplicacion esta disenada para brindarte el mejor servicio de la manera mas agil y eficiente"),
              const Spacer(flex: 1),
              const Spacer(),
              largeButton(() {
                //Aqui va nuestyra funcion

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Usuarios();
                    },
                  ),
                );
              }, const Color(0xFFFFC0CB), "Login"),
              const Spacer(flex: 1),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Menu();
                    },
                  ),
                );
                //Aqui ira nuestra funcion
              }, Color.fromARGB(116, 44, 4, 246), "Menu"),
              Spacer(flex: 1),
              largeButton(() {
                //Aqui va nuestyra funcion

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Pedidos();
                    },
                  ),
                );
              }, Color.fromARGB(105, 255, 10, 10), "Pedidos"),
              Spacer(flex: 1),
              largeButton(() {
                //Aqui va nuestyra funcion

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Comnetarios();
                    },
                  ),
                );
              }, Color.fromARGB(105, 39, 255, 10), "Visitanos"),
              const Spacer(flex: 1),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Reservas();
                    },
                  ),
                );
                //Aqui ira nuestra funcion
              }, Color.fromARGB(255, 107, 226, 242), "Reservas"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
