import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class UpdateClient extends StatefulWidget {
  const UpdateClient({super.key});

  @override
  State<UpdateClient> createState() => _UpdateClientState();
}

class _UpdateClientState extends State<UpdateClient> {
  TextEditingController clientController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update cliente"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina modificar cliente',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: clientController,
              decoration: const InputDecoration(hintText: 'Ingrese la modificacion'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await modificarClient(clientController.text).then((_) {
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
