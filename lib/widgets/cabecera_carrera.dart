import 'package:flutter/material.dart';

class CabeceraCarrera extends StatelessWidget {
  const CabeceraCarrera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 24),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          color: const Color.fromRGBO(254, 218, 63, 1),
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  text: 'Consultas ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Online',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 4),
                child: Icon(
                  Icons.call,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              const Text(' 600 328 1000')
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                  image: NetworkImage(
                      'https://www.umayor.cl/um/bundles/umayor/images/header-logo.png')),
              Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 400,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.umayor.cl/um/bundles/carreras/images/carreras/santiago/agronomia.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                width: sizeScreen.width * 0.9,
                color: const Color.fromRGBO(79, 126, 159, 1),
                child: const Text(
                  'FACULTAD DE CIENCIAS, INGENIERIA Y TECNOLOGIA',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.clip,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: const Color.fromRGBO(255, 255, 255, 0.8),
                height: 342,
                child: const Center(
                  child: Text(
                    'Agronomia',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
