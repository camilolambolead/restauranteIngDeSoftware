import 'package:flutter/material.dart';
import 'package:proyecto_restaurante/vistas/welcomePage.dart';
import 'package:proyecto_restaurante/widgets/wcWidgets.dart';

class Reservas extends StatelessWidget {
  Reservas({Key? key}) : super(key: key);

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
            color: const Color(0xFF00FFFF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              const Image(image: AssetImage("assets/logo2.png")),
              titleText("Reservas Restaurante"),
              const Spacer(flex: 1),
              subTitleText(
                  "Realiza reservas con solo un clic y disfruta de una expericia gastronomica inolvidable"),
              const Spacer(flex: 1),
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
