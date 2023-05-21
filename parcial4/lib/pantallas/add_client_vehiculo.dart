import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class AddClientVehiculo extends StatefulWidget {
  const AddClientVehiculo({super.key});

  @override
  State<AddClientVehiculo> createState() => _AddClientVehiculoState();
}

class _AddClientVehiculoState extends State<AddClientVehiculo> {
  TextEditingController clientVehiculoController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anadir cliente vehiculo"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina anadir cliente vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: clientVehiculoController,
              decoration: const InputDecoration(hintText: 'Ingrese la modificacion'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await agregarClientVehiculo(clientVehiculoController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child:const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}
