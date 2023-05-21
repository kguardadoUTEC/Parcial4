import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class DeleteClient extends StatefulWidget {
  const DeleteClient({super.key});

  @override
  State<DeleteClient> createState() => _DeleteClientState();
}

class _DeleteClientState extends State<DeleteClient> {
  TextEditingController clientController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Borrar cliente"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina borrar cliente',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: clientController,
              decoration: const InputDecoration(hintText: 'Ingrese el dato a borrar'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await borrarClient(clientController.text).then((_) {
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
