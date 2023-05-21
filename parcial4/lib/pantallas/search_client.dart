import 'package:flutter/material.dart';
import 'package:parcial4/services/firebase.dart';

class SearchClient extends StatefulWidget {
  const SearchClient({super.key});

  @override
  State<SearchClient> createState() => _SearchClientState();
}

class _SearchClientState extends State<SearchClient> {
  TextEditingController clientController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar cliente"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina buscar cliente',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: clientController,
              decoration: const InputDecoration(hintText: 'Ingrese el dato a buscar'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await buscarClient(clientController.text).then((_) {
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
