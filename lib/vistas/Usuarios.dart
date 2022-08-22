import 'package:flutter/material.dart';
import 'package:proyecto_restaurante/vistas/welcomePage.dart';
import 'package:proyecto_restaurante/widgets/wcWidgets.dart';

class Usuarios extends StatelessWidget {
  Usuarios({Key? key}) : super(key: key);

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
            color: Color.fromARGB(255, 174, 174, 193),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Image(image: AssetImage("assets/logo2.png")),
              const Spacer(flex: 3),
              titleText("Sing In"),
              const SizedBox(height: 8),
              subTitleText(
                  "Inicia sesion o crea una cuenta para acceder a nuestros servicios"),
              const Spacer(),
              const SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User",
                  ),
                ),
              ),
              const SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              const Spacer(flex: 1),
              //TextField(),Spacer(),
              largeButton(
                  () {}, Color.fromARGB(255, 184, 240, 225), "Ingresar"),
              const Spacer(flex: 2),
              largeButton(
                  () {}, Color.fromARGB(255, 188, 184, 240), "Crea una cuenta"),
              const Spacer(flex: 2),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomePage();
                    },
                  ),
                );
                //Aqui ira nuestra funcion
              }, const Color(0xFFF2D06B), "Regresar"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
