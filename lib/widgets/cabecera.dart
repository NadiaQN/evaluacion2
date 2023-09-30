import 'package:flutter/material.dart';

class Cabecera extends StatelessWidget {
  const Cabecera({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 28),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(
                  image: NetworkImage(
                      'https://www.admisionmayor.cl/bundles/admisionmayor/images/logo-admision.png')),
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
          height: sizeScreen.height * 0.06,
          color: const Color.fromRGBO(101, 100, 100, 1),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 0),
                child: Icon(
                  Icons.expand_more,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 0),
                child: Text(
                  'Menú',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
        ),
        const Image(
            image: NetworkImage(
                'https://www.admisionmayor.cl/bundles/admisionmayor/images/Santiago/img-fondo.jpg')),
        Container(
          width: double.infinity,
          height: sizeScreen.height * 0.1,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
          color: const Color.fromRGBO(68, 68, 68, 1),
          child: const Text('CARRERAS SANTIAGO',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
        )
      ],
    );
  }
}
