import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class UpdateVehiculo extends StatefulWidget {
  const UpdateVehiculo({super.key});

  @override
  State<UpdateVehiculo> createState() => _UpdateVehiculoState();
}

class _UpdateVehiculoState extends State<UpdateVehiculo> {
  TextEditingController vehiculoController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update vehiculo"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina modificar vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: vehiculoController,
              decoration: const InputDecoration(hintText: 'Ingrese la modificacion'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await modificarVehiculo(vehiculoController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child:const Text("Actualizar"))
          ],
        ),
      ),
    );
  }
}
