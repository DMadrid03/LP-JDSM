import 'package:flutter/material.dart';
import 'package:tarea_2_0/ListTileIconButton.dart';
import 'package:tarea_2_0/custom_buttons.dart';
import 'package:tarea_2_0/custom_list_tile.dart';

class ContactArguments {
  final String name;
  final String telNumber;
  final String email;
  Color color = const Color(0xffdc3c6c);

  ContactArguments(this.name, this.telNumber, this.email, this.color);
}

class ContactDetail extends StatelessWidget {
  const ContactDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final parameters =
        ModalRoute.of(context)!.settings.arguments as ContactArguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: parameters.color,
                child: Text(
                  parameters.name[0],
                  style: const TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Text(
                parameters.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: Color.fromARGB(255, 102, 102, 102),
                thickness: 0.1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(icon: Icons.call_outlined, text: 'Llamar'),
                  CustomButton(
                      icon: Icons.sms_outlined, text: 'Mensaje de texto'),
                  CustomButton(icon: Icons.video_call_outlined, text: 'Video'),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 102, 102, 102),
                thickness: 0.1,
                height: 32,
              ),
              Card(
                  margin: const EdgeInsets.all(12),
                  color: const Color(0xffeeedf4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Información de contacto',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          )
                        ], //children (row titulo)
                      ),
                      ListTile(
                        leading: const ListTileIconButton(
                          icon: Icons.call_outlined,
                        ),
                        title: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth:
                                150.0, // Establece el ancho máximo deseado
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    parameters.telNumber,
                                    style: const TextStyle(
                                        fontSize: 16.5,
                                        color: Color.fromARGB(255, 36, 35, 37),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Celular',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 52, 50, 54),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        trailing: const SizedBox(
                          width: 96.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ListTileIconButton(
                                  icon: Icons.video_call_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              ListTileIconButton(icon: Icons.sms_outlined),
                            ],
                          ),
                        ),
                      ),
                      CustomListTile(
                          text: 'Enviar mensaje a ${parameters.telNumber}'),
                      CustomListTile(text: 'Llamar a ${parameters.telNumber}'),
                      CustomListTile(
                        text: 'Videollamar a ${parameters.telNumber}',
                      ),
                      CustomListTile(
                        text: 'Mensaje a ${parameters.telNumber}',
                        telegram: true,
                      ),
                      CustomListTile(
                        text: 'Llamada de voz al ${parameters.telNumber}',
                        telegram: true,
                      ),
                      CustomListTile(
                        text: 'Videollamada al ${parameters.telNumber}',
                        telegram: true,
                      ),
                    ], //children (column card)
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
