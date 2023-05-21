import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class AddClient extends StatefulWidget {
  const AddClient({super.key});

  @override
  State<AddClient> createState() => _AddClientState();
}

class _AddClientState extends State<AddClient> {
  TextEditingController clientController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("agregar cliente"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child:  Text(
                'pagina agregar cliente',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: clientController,
              decoration: const InputDecoration(hintText: 'Ingrese el cliente'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await agregarCliente(clientController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child: const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}
