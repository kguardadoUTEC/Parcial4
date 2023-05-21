import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class SearchClientVehiculo extends StatefulWidget {
  const SearchClientVehiculo({super.key});

  @override
  State<SearchClientVehiculo> createState() => _SearchClientVehiculoState();
}

class _SearchClientVehiculoState extends State<SearchClientVehiculo> {
  TextEditingController clientVehiculoController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar cliente vehiculo"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina buscar cliente vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: clientVehiculoController,
              decoration: const InputDecoration(hintText: 'Buscar cliente vehiculo'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await buscarClientVehiculo(clientVehiculoController.text).then((_) {
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
