import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore baseD = FirebaseFirestore.instance;
Future<List> getUsuarios() async {
  List usuarios = [];
  CollectionReference collectionReferenceUsuarios =
      baseD.collection('usuarios');
  QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();
  queryUsuarios.docs.forEach((documento) {
    usuarios.add(documento.data());
  });

  return usuarios;
}
//guardar usuario
Future<void> agregarUsuario(String usuario) async {
  await baseD.collection('usuarios').add({"nombre": usuario});
}

Future<void> agregarClientVehiculo(String data) async {
  await baseD.collection('clientevehiculo').add({"relacion": data});
}

Future<void> agregarCliente(String usuario) async {
  await baseD.collection('cliente').add({"nombre": usuario});
}

Future<void> agregarVehiculo(String data) async {
  await baseD.collection('vehiculo').add({"nombre": data});
}

Future<void> borrarClientVehiculo(String data) async {
  await baseD.collection('clientevehiculo').add({"relacion": data});
}

Future<void> borrarClient(String usuario) async {
  await baseD.collection('cliente').add({"nombre": usuario});
}

Future<void> borrarVehiculo(String usuario) async {
  await baseD.collection('vehiculo').add({"nombre": usuario});
}

Future<void> buscarClientVehiculo(String data) async {
  await baseD.collection('clientevehiculo').add({"relacion": data});
}

Future<void> buscarClient(String usuario) async {
  await baseD.collection('cliente').add({"nombre": usuario});
}

Future<void> buscarVehiculo(String usuario) async {
  await baseD.collection('vehiculo').add({"nombre": usuario});
}

Future<void> modificarClientVehiculo(String data) async {
  await baseD.collection('clientevehiculo').add({"relacion": data});
}

Future<void> modificarClient(String usuario) async {
  await baseD.collection('cliente').add({"nombre": usuario});
}

Future<void> modificarVehiculo(String usuario) async {
  await baseD.collection('vehiculo').add({"nombre": usuario});
}

/**
 * usuario:[{
 * nombre:"Tomas"
 * },
 * {
 * nombre:"Luis"
 * },
 * {
 * nombre:"Maria"
 * }
 * ]
 * 
 */