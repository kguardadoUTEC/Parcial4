import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class DeleteClientVehiculo extends StatefulWidget {
  const DeleteClientVehiculo({super.key});

  @override
  State<DeleteClientVehiculo> createState() => _DeleteClientVehiculoState();
}

class _DeleteClientVehiculoState extends State<DeleteClientVehiculo> {
  TextEditingController clientVehiculoController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delete cliente vehiculo"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina borrar cliente vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: clientVehiculoController,
              decoration: const InputDecoration(hintText: 'Ingrese los datos a borrar'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await borrarClientVehiculo(clientVehiculoController.text).then((_) {
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
