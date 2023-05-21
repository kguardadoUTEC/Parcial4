import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class SearchVehiculo extends StatefulWidget {
  const SearchVehiculo({super.key});

  @override
  State<SearchVehiculo> createState() => _SearchVehiculoState();
}

class _SearchVehiculoState extends State<SearchVehiculo> {
  TextEditingController vehiculoController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar vehiculo"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina buscar vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: vehiculoController,
              decoration: const InputDecoration(hintText: 'Ingrese el dato a buscar'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await buscarVehiculo(vehiculoController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child:const Text("Buscar"))
          ],
        ),
      ),
    );
  }
}
