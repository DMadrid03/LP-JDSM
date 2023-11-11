import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({super.key});

  List<Map<String, dynamic>> contactos = [
    {
      'Nombre': 'Adán Sabillon',
      'Teléfono': '9933-5309',
      'Correo': 'adans@unah.hn'
    },
    {
      'Nombre': 'Alberto Morales',
      'Teléfono': '9995-0819',
      'Correo': 'a_morales@hotmail.com',
    },
    {
      'Nombre': 'Alcaldía',
      'Teléfono': '100',
      'Correo': 'a@gmail.com',
    },
    {
      'Nombre': 'Alex',
      'Teléfono': '9718-1620',
      'Correo': 'rfig@gmail.com',
    },
    {
      'Nombre': 'Alexa Rodriguez',
      'Teléfono': '9642-3556',
      'Correo': 'a_rod@gmail.com',
    },
    {
      'Nombre': 'Andrea Ponce',
      'Teléfono': '9777-3508',
      'Correo': '@gmail.com',
    },
    {
      'Nombre': 'Angel Madrid F',
      'Teléfono': '9679-4310',
      'Correo': 'amadrid@gmail.com',
    },
    {
      'Nombre': 'Angie Fernandez',
      'Teléfono': '9856-3226',
      'Correo': 'angi3fer@gmail.com',
    },
    {
      'Nombre': 'Angie Recarte',
      'Teléfono': '3973-6009',
      'Correo': 'anicoleR@gmail.com',
    },
    {
      'Nombre': 'Baldir Ramos',
      'Teléfono': '3199-5626',
      'Correo': 'bdlr@gmail.com',
    },
    {
      'Nombre': 'Bomberos',
      'Teléfono': '911',
      'Correo': 'bomberoshonduras@gmail.com',
    },
    {
      'Nombre': 'Camilo Madrid',
      'Teléfono': '9683-6466',
      'Correo': 'camturcios@gmail.com',
    },
    {
      'Nombre': 'Dulce Pineda Madrid',
      'Teléfono': '9570-0127',
      'Correo': 'dulcepm@gmail.com'
    },
    {
      'Nombre': 'Claudia Navarrete Madrid',
      'Teléfono': '8859-4903',
      'Correo': 'claudianm@gmail.com'
    },
    {
      'Nombre': 'Carlos Limas',
      'Teléfono': '9931-8846',
      'Correo': 'carloslimas@gmail.com'
    },
    {'Nombre': 'Danny', 'Teléfono': '966-166-98', 'Correo': 'danny@gmail.com'},
    {
      'Nombre': 'Diana Pineda Madrid',
      'Teléfono': '9748-3370',
      'Correo': 'dianapm@gmail.com'
    },
    {
      'Nombre': 'Denia Argueta',
      'Teléfono': '9871-1880',
      'Correo': 'deniaargueta@gmail.com'
    },
    {
      'Nombre': 'David Decorador San Buena',
      'Teléfono': '3170-7988',
      'Correo': 'daviddsb@gmail.com'
    },
    {
      'Nombre': 'David Limas',
      'Teléfono': '9406-9619',
      'Correo': 'davidlimas@gmail.com'
    },
    {'Nombre': 'Eeh', 'Teléfono': '944-015-15', 'Correo': 'eeh@gmail.com'},
    {'Nombre': 'Elías', 'Teléfono': '8780-2508', 'Correo': 'elias@gmail.com'},
    {
      'Nombre': 'Daniel Eduardo Maradiaga',
      'Teléfono': '8842-7659',
      'Correo': 'danieleduardom@gmail.com'
    },
    {
      'Nombre': 'Devin Moises Pineda',
      'Teléfono': '9994-6326',
      'Correo': 'devinmp@gmail.com'
    },
    {
      'Nombre': 'Carlos Ernesto Morales',
      'Teléfono': '1-226-505-0878',
      'Correo': 'carlosmorales@gmail.com'
    },
    {
      'Nombre': 'Cindy GJ',
      'Teléfono': '9792-8697',
      'Correo': 'cindygj@gmail.com'
    },
    {
      'Nombre': 'Edy Sanchez',
      'Teléfono': '9920-0916',
      'Correo': 'edysanchez@gmail.com'
    },
    {
      'Nombre': 'Daniel PJ',
      'Teléfono': '9929-3670',
      'Correo': 'danielpj@gmail.com'
    },
    {
      'Nombre': 'Carolina Suazo',
      'Teléfono': '9552-6062',
      'Correo': 'carolinasuazo@gmail.com'
    },
    {
      'Nombre': 'Christian Virgilo Madrid',
      'Teléfono': '9281-2390',
      'Correo': 'christianvirgilom@gmail.com'
    },
    {
      'Nombre': 'Dayanara Sistemas',
      'Teléfono': '9706-0246',
      'Correo': 'dayanarasistemas@gmail.com'
    },
    {'Nombre': 'Educacion', 'Teléfono': '104', 'Correo': 'educacion@gmail.com'},
    {'Nombre': 'COPECO', 'Teléfono': '911', 'Correo': 'copeco@gmail.com'},
    {
      'Nombre': 'Empleo Temporal',
      'Teléfono': '117',
      'Correo': 'empleotemporal@gmail.com'
    },
    {'Nombre': 'CONADEH', 'Teléfono': '132', 'Correo': 'conadeh@gmail.com'},
    {'Nombre': 'DEI', 'Teléfono': '133', 'Correo': 'dei@gmail.com'},
    {'Nombre': 'CNBS', 'Teléfono': '134', 'Correo': 'cnbs@gmail.com'},
    {'Nombre': 'DNII', 'Teléfono': '143', 'Correo': 'dnii@gmail.com'},
    {'Nombre': 'CONATEL', 'Teléfono': '185', 'Correo': 'conatel@gmail.com'},
    {'Nombre': 'Cruz Roja', 'Teléfono': '911', 'Correo': 'cruzroja@gmail.com'},
    {'Nombre': 'Diana Confeccion', 'Correo': 'dianamarb@gmail.com'},
    {
      'Nombre': 'Carlos Trejo',
      'Teléfono': '3290-1604',
      'Correo': 'carlostrejo@gmail.com'
    },
    {
      'Nombre': 'Emely Figueroa',
      'Teléfono': '9640-3024',
      'Correo': 'emelyfigueroa@gmail.com'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(contactos[index]['Nombre']),
            //subtitle: const Text('subtitulo'),
            leading: CircleAvatar(
              child: Text(
                contactos[index]['Nombre'][0],
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
