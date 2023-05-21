import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parcial4/pantallas/add_usuario.dart';
import 'package:parcial4/pantallas/firebaseapp.dart';

import 'package:parcial4/pantallas/update_usuer.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FireBaseMain());
}

class FireBaseMain extends StatelessWidget {
  const FireBaseMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirebaseCRUD',
      initialRoute: '/',
      routes: {
        '/': (context) => const FireBaseAPP(),
        '/add': (context) => const AddUser(),
        '/edit': (context)=> const UpdateUser(),
      },
    );
  }
}
