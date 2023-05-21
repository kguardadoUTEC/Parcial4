import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parcial4/pantallas/add_client.dart';
import 'package:parcial4/pantallas/add_client_vehiculo.dart';
import 'package:parcial4/pantallas/add_vehiculo.dart';
import 'package:parcial4/pantallas/delete_client.dart';
import 'package:parcial4/pantallas/delete_client_vehiculo.dart';
import 'package:parcial4/pantallas/delete_vehiculo.dart';
import 'package:parcial4/pantallas/firebaseapp.dart';
import 'package:parcial4/pantallas/search_client.dart';
import 'package:parcial4/pantallas/search_client_vehiculo.dart';
import 'package:parcial4/pantallas/search_vehiculo.dart';
import 'package:parcial4/pantallas/update_client.dart';
import 'package:parcial4/pantallas/update_client_vehiculo.dart';
import 'package:parcial4/pantallas/update_vehiculo.dart';
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
        '/add': (context) => const AddClientVehiculo(),
        '/add': (context) => const AddClient(),
        '/add': (context) => const AddVehiculo(),
        '/delete': (context) => const DeleteClientVehiculo(),
        '/delete': (context) => const DeleteClient(),
        '/delete': (context) => const DeleteVehiculo(),
        '/search': (context) => const SearchClientVehiculo(),
        '/search': (context) => const SearchClient(),
        '/search': (context) => const SearchVehiculo(),
        '/edit': (context)=> const UpdateClientVehiculo(),
        '/edit': (context)=> const UpdateClient(),
        '/edit': (context)=> const UpdateVehiculo(),
      },
    );
  }
}
