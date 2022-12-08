import 'package:flutter/material.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Aclo App"),
        backgroundColor: const Color.fromARGB(255, 7, 153, 73),
        elevation: 1.0,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //Alineamiento al widget de mayor ancho
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text("Contador de Clicks", style: TextStyle(fontSize: 20)),
            Text(
              '$contador',
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: const Color.fromARGB(255, 7, 153, 73),
        overlayColor: const Color.fromARGB(0, 0, 0, 73),
        overlayOpacity: 0.6,
        spacing: 5,
        spaceBetweenChildren: 15,
        children: <SpeedDialChild>[
          SpeedDialChild(
            child: const Icon(Icons.camera_alt),
            label: 'Tomar Foto',
            backgroundColor: const Color.fromARGB(255, 56, 85, 141),
            foregroundColor: Colors.white,
            labelBackgroundColor: Colors.black,
            labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
            onTap: () => showToast(context, 'CAMARA'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.calendar_month),
            label: 'Ver Actividades',
            backgroundColor: const Color.fromARGB(255, 235, 212, 11),
            foregroundColor: Colors.white,
            labelBackgroundColor: Colors.black,
            labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
            onTap: () => showToast(context, 'CALENDARIO'),
          ),
        ],
      ),
    );
  }

  void showToast(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
    // ignore: avoid_print
    print(message);
  }
}
