import 'package:flutter/material.dart';
import 'package:proyecto_restaurante/vistas/welcomePage.dart';
import 'package:proyecto_restaurante/widgets/wcWidgets.dart';

class Comnetarios extends StatelessWidget {
  Comnetarios({Key? key}) : super(key: key);

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
            color: Color.fromARGB(255, 255, 180, 127),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              titleText("Nuestras sedes"),
              const Spacer(flex: 1),
              const Image(image: AssetImage("assets/ubicacion.png")),
              const Spacer(flex: 2),
              subTitleText("Ubicaciones"),
              const Spacer(flex: 2),
              const Image(image: AssetImage("assets/maps.png")),
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
