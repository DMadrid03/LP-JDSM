// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tarea_2_0/Contacts_Page.dart';
import 'package:tarea_2_0/contact_textfield.dart';

class NewContactPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  NewContactPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Crear contacto nuevo',
              style: TextStyle(fontSize: 20),
            ),
            const Spacer(),
            TextButton(
              child: const Text(
                'GUARDAR',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                if (_nameController.text.isEmpty ||
                    _emailController.text.isEmpty ||
                    _phoneController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Rellene todos los campos')));
                } else {
                  Navigator.pushReplacementNamed(
                    context,
                    "/contacts",
                  );
                  ContactsPage.contactos.add({
                    "Nombre": _nameController.text,
                    "Teléfono": _phoneController.text,
                    "Correo": _emailController.text
                  });
                }
              },
            ),
          ],
        ),
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Color.fromARGB(255, 183, 186, 192),
              child: const Icon(
                Icons.person,
                color: Color.fromARGB(255, 228, 227, 227),
                size: 190,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  ContactTextField(
                    icon: Icons.person_outline_outlined,
                    hintText: 'Nombre',
                    keyboardType: TextInputType.name,
                    cont: _nameController,
                  ),
                  ContactTextField(
                    icon: Icons.phone_outlined,
                    hintText: 'Teléfono',
                    keyboardType: TextInputType.phone,
                    cont: _phoneController,
                  ),
                  ContactTextField(
                    icon: Icons.email_outlined,
                    hintText: 'Correo',
                    keyboardType: TextInputType.emailAddress,
                    cont: _emailController,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
