import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget {
  final String carrera;
  final String jornada;
  final String grado;
  final String campus;
  final String acreditacion;

  const Tarjeta(
      {super.key,
      required this.carrera,
      required this.jornada,
      required this.grado,
      required this.campus,
      required this.acreditacion});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'carrera');
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.33),
                      offset: Offset(2, 3),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                border: BorderDirectional(
                    bottom: BorderSide(
                        width: 5,
                        style: BorderStyle.solid,
                        color: Color.fromRGBO(0, 104, 120, 1)))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(carrera,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 6),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.brightness_low,
                        size: 12,
                        color: Color.fromRGBO(119, 119, 119, 1),
                      ),
                      Text(jornada),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.insert_drive_file,
                        size: 12,
                        color: Color.fromRGBO(119, 119, 119, 1),
                      ),
                      Text(grado),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.account_balance,
                        size: 12,
                        color: Color.fromRGBO(119, 119, 119, 1),
                      ),
                      Text(campus),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        size: 12,
                        color: Color.fromRGBO(119, 119, 119, 1),
                      ),
                      Text(
                        acreditacion,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
