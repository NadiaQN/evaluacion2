import 'package:evaluacion2/widgets/widget.dart';
import 'package:flutter/material.dart';

class CarreraScreen extends StatelessWidget {
  const CarreraScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CabeceraCarrera(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 60),
              child: Text(
                'Ingenieros Agrónomos con una sólida formación científica preparados para enfrentar un mundo agroempresarial cambiante, con desafíos en sustentabilidad ambiental, social y económica que exigen innovación y un fuerte compromiso en el desarrollo de una mejor calidad de vida rural y urbana. ',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
