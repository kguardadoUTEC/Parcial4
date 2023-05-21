import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class DeleteVehiculo extends StatefulWidget {
  const DeleteVehiculo({super.key});

  @override
  State<DeleteVehiculo> createState() => _DeleteVehiculoState();
}

class _DeleteVehiculoState extends State<DeleteVehiculo> {
  TextEditingController vehiculoController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Borrar vehiculo"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina borrar vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: vehiculoController,
              decoration: const InputDecoration(hintText: 'Ingrese el dato a borrar'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await borrarVehiculo(vehiculoController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child:const Text("Borrar"))
          ],
        ),
      ),
    );
  }
}
