import 'package:flutter/material.dart';
import 'package:proyecto_restaurante/vistas/welcomePage.dart';
import 'package:proyecto_restaurante/widgets/wcWidgets.dart';

class Pedidos extends StatelessWidget {
  Pedidos({Key? key}) : super(key: key);

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
            color: Color.fromARGB(134, 255, 242, 0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              titleText("Pedidos Restaurante"),
              const Spacer(flex: 1),
              subTitleText("Realiza pedidos y recibe en la puerta de tu casa"),
              const Spacer(flex: 1),
              const Image(image: AssetImage("assets/celular.png")),
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
              }, Color.fromARGB(223, 170, 151, 243), "Regresar"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
