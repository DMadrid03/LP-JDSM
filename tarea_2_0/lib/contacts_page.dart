import 'package:flutter/material.dart';
import 'dart:math';

import 'package:tarea_2_0/contact_detail.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({super.key});

  static List<Map<String, dynamic>> contactos = [
    {
      "Nombre": "Adán Sabillon",
      "Teléfono": "9933-5309",
      "Correo": "adans@unah.hn"
    },
    {
      "Nombre": "Alberto Morales",
      "Teléfono": "9995-0819",
      "Correo": "a_morales@hotmail.com"
    },
    {"Nombre": "Alcaldía", "Teléfono": "100", "Correo": "a@gmail.com"},
    {"Nombre": "Alex", "Teléfono": "9718-1620", "Correo": "rfig@gmail.com"},
    {
      "Nombre": "Alexa Rodriguez",
      "Teléfono": "9642-3556",
      "Correo": "a_rod@gmail.com"
    },
    {"Nombre": "Andrea Ponce", "Teléfono": "9777-3508", "Correo": "@gmail.com"},
    {
      "Nombre": "Angel Madrid F",
      "Teléfono": "9679-4310",
      "Correo": "amadrid@gmail.com"
    },
    {
      "Nombre": "Angie Fernandez",
      "Teléfono": "9856-3226",
      "Correo": "angi3fer@gmail.com"
    },
    {
      "Nombre": "Angie Recarte",
      "Teléfono": "3973-6009",
      "Correo": "anicoleR@gmail.com"
    },
    {
      "Nombre": "Baldir Ramos",
      "Teléfono": "3199-5626",
      "Correo": "bdlr@gmail.com"
    },
    {
      "Nombre": "Bomberos",
      "Teléfono": "911",
      "Correo": "bomberoshonduras@gmail.com"
    },
    {
      "Nombre": "Camilo Madrid",
      "Teléfono": "9683-6466",
      "Correo": "camturcios@gmail.com"
    },
    {
      "Nombre": "Carlos Ernesto Morales",
      "Teléfono": "1-226-505-0878",
      "Correo": "carlosmorales@gmail.com"
    },
    {
      "Nombre": "Carlos Limas",
      "Teléfono": "9931-8846",
      "Correo": "carloslimas@gmail.com"
    },
    {
      "Nombre": "Carlos Trejo",
      "Teléfono": "3290-1604",
      "Correo": "carlostrejo@gmail.com"
    },
    {
      "Nombre": "Carolina Suazo",
      "Teléfono": "9552-6062",
      "Correo": "carolinasuazo@gmail.com"
    },
    {
      "Nombre": "Cindy GJ",
      "Teléfono": "9792-8697",
      "Correo": "cindygj@gmail.com"
    },
    {
      "Nombre": "Claudia Navarrete Madrid",
      "Teléfono": "8859-4903",
      "Correo": "claudianm@gmail.com"
    },
    {"Nombre": "CONADEH", "Teléfono": "132", "Correo": "conadeh@gmail.com"},
    {"Nombre": "CONATEL", "Teléfono": "185", "Correo": "conatel@gmail.com"},
    {"Nombre": "Cruz Roja", "Teléfono": "911", "Correo": "cruzroja@gmail.com"},
    {
      "Nombre": "Daniel Eduardo Maradiaga",
      "Teléfono": "8842-7659",
      "Correo": "danieleduardom@gmail.com"
    },
    {
      "Nombre": "Daniel PJ",
      "Teléfono": "9929-3670",
      "Correo": "danielpj@gmail.com"
    },
    {"Nombre": "Danny", "Teléfono": "966-166-98", "Correo": "danny@gmail.com"},
    {"Nombre": "Diana Confeccion", "Correo": "dianamarb@gmail.com"},
    {
      "Nombre": "Diana Pineda Madrid",
      "Teléfono": "9748-3370",
      "Correo": "dianapm@gmail.com"
    },
    {
      "Nombre": "Dulce Pineda Madrid",
      "Teléfono": "9570-0127",
      "Correo": "dulcepm@gmail.com"
    },
    {"Nombre": "DEI", "Teléfono": "133", "Correo": "dei@gmail.com"},
    {
      "Nombre": "Denia Argueta",
      "Teléfono": "9871-1880",
      "Correo": "deniaargueta@gmail.com"
    },
    {
      "Nombre": "Devn Moises Pineda",
      "Teléfono": "9994-6326",
      "Correo": "devnmp@gmail.com"
    },
    {"Nombre": "Educacion", "Teléfono": "104", "Correo": "educacion@gmail.com"},
    {
      "Nombre": "Edy Sanchez",
      "Teléfono": "9920-0916",
      "Correo": "edysanchez@gmail.com"
    },
    {"Nombre": "Eeh", "Teléfono": "944-015-15", "Correo": "eeh@gmail.com"},
    {"Nombre": "Elías", "Teléfono": "8780-2508", "Correo": "elias@gmail.com"},
    {
      "Nombre": "Emely Figueroa",
      "Teléfono": "9640-3024",
      "Correo": "emelyfigueroa@gmail.com"
    },
    {
      "Nombre": "Empleo Temporal",
      "Teléfono": "117",
      "Correo": "empleotemporal@gmail.com"
    },
    {"Nombre": "Erika", "Teléfono": "9517-9566", "Correo": "erika@gmail.com"},
    {
      "Nombre": "Esperanza Sanchez",
      "Teléfono": "9707-7969",
      "Correo": "esperanzas@gmail.com"
    },
    {
      "Nombre": "Gaby Fernandez",
      "Teléfono": "9902-9015",
      "Correo": "gabyfernandez@gmail.com"
    },
    {
      "Nombre": "Estefany GJ",
      "Teléfono": "9670-3464",
      "Correo": "estefanygj@gmail.com"
    },
    {
      "Nombre": "Hilda Valladares",
      "Teléfono": "9963-2994",
      "Correo": "hildavalladares@gmail.com"
    },
    {
      "Nombre": "Gervacio Sanchez",
      "Teléfono": "9769-9553",
      "Correo": "gervacios@gmail.com"
    },
    {
      "Nombre": "Guido Martinez",
      "Teléfono": "9774-9681",
      "Correo": "guidomartinez@gmail.com"
    },
    {
      "Nombre": "Heberth Ponce",
      "Teléfono": "9490-8206",
      "Correo": "heberthponce@gmail.com"
    },
    {"Nombre": "Henry Banegas", "Correo": "henrybanegas@gmail.com"},
    {"Nombre": "ENEE", "Teléfono": "118", "Correo": "enee@gmail.com"},
    {"Nombre": "FITT", "Teléfono": "137", "Correo": "fitt@gmail.com"},
    {"Nombre": "FFAA", "Teléfono": "138", "Correo": "ffaa@gmail.com"},
    {
      "Nombre": "Fabri Figueroa",
      "Teléfono": "99686454",
      "Correo": "fabrifigueroa@gmail.com"
    },
    {
      "Nombre": "Guillermo Navarrete Madrid",
      "Teléfono": "3380-8769",
      "Correo": "guillermoN@gmail.com"
    }
  ];
  final List<Color> colores = [
    const Color(0xfffec600),
    const Color(0xfffe9522),
    const Color(0xff6341b2),
    const Color(0xff23bed5),
    const Color(0xffef2767)
  ];

  @override
  Widget build(BuildContext context) {
    /* contactos.add({
      'Nombre': newCont.name,
      'Teléfono': newCont.telNumber,
      'Correo': newCont.email,
    });*/
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: contactos.length + 1, //contactos + boton "crear contacto"
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              // Elemento extra
              return ListTile(
                leading: Icon(
                  Icons.person_add_alt_1_outlined,
                  size: 22,
                  color: Colors.blue[800],
                ),
                title: Text(
                  'Crear contacto nuevo',
                  style: TextStyle(color: Colors.lightBlue[400]),
                ),
                onTap: () {
                  // Lógica cuando se hace clic en "Crear contacto nuevo"
                  print('Crear contacto nuevo');
                  Navigator.of(context).pushNamed("/ncontact");
                },
              );
            } else {
              //color aleatorio de la lista
              int indColor = Random().nextInt(4);
              // Resto de elementos de la lista
              index--;
              return ListTile(
                title: Text(
                  contactos[index]['Nombre'],
                  style: const TextStyle(fontSize: 16.5),
                ),
                leading: CircleAvatar(
                  backgroundColor: colores[indColor],
                  child: Text(
                    contactos[index]['Nombre'][0], //numero aleatorio
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                onTap: () {
                  // Lógica cuando se hace clic en otros elementos de la lista
                  print('Contacto seleccionado: ${contactos[index]['Nombre']}');
                  Navigator.pushNamed(context, '/contact_d',
                      arguments: ContactArguments(
                          '${contactos[index]['Nombre']}',
                          '${contactos[index]['Teléfono']}',
                          '${contactos[index]['Correo']}',
                          colores[indColor]));
                },
              );
            }
          },
        ),
      ),
    );
  }
}
