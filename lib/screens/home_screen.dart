import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cabecera(),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
              child: Text(
                'Admision 2024',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(68, 68, 68, 1)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Text(
                'Revisa todas nuestras carreras y programas de Pregrado Diurno para despertar tu espíritu emprendedor con la Universidad Mayor. Busca la carrera de tu preferencia de acuerdo a los filtros por facultad. Puedes encontrar Medicina y Ciencias de la Salud, Ciencias Sociales y Artes, Ciencias, Ingeniería y Tecnología.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(59, 59, 60, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Tarjeta(
              carrera: 'Agronomía',
              jornada: ' Diurna',
              grado: ' Pregrado',
              campus: ' Campus Huechuraba',
              acreditacion: 'Acreditada por 7 años',
            ),
            Tarjeta(
              carrera: 'Biotecnología',
              jornada: ' Diurna',
              grado: ' Pregrado',
              campus: ' Campus Santiago',
              acreditacion: 'Acreditada por 6 años',
            ),
            Tarjeta(
              carrera: 'Ingeniería Forestal',
              jornada: ' Diurna',
              grado: ' Pregrado',
              campus: ' Campus Huechuraba',
              acreditacion: 'Certificada por 4 años',
            ),
            Tarjeta(
              carrera: 'Ingeniería Civil Electronica',
              jornada: ' Diurna',
              grado: ' Pregrado',
              campus: ' Campus Manuel Montt',
              acreditacion: 'Certificada por 4 años',
            ),
          ],
        ),
      ),
    );
  }
}




// rgba(254, 218, 63, 1)
