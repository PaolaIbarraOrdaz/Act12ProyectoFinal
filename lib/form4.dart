import 'package:flutter/material.dart';

class Formulario4 extends StatelessWidget {
  const Formulario4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario Fiesta'),
          backgroundColor: const Color(0xffb80303),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
          elevation: 8,
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: const [
                Text(
                  "Ingresa los siguientes datos",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                Image(
                  image: NetworkImage(
                      'https://saposyprincesas.elmundo.es/wp-content/uploads/2022/04/Decoracion-para-fiesta-de-Encanto-1.jpg'),
                  width: 500,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su ID",
                      labelText: "ID",
                      prefixIcon: Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su nombre",
                      labelText: "Nombre",
                      prefixIcon: Icon(
                        Icons.grid_view_rounded,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su Tipo de paquete",
                      labelText: "Tipo de paquete",
                      prefixIcon: Icon(
                        Icons.group_work_sharp,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese cantidad dulces",
                      labelText: "Dulces",
                      prefixIcon: Icon(
                        Icons.local_attraction,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su fiesta",
                      labelText: "Fiesta",
                      prefixIcon: Icon(
                        Icons.family_restroom_rounded,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su fecha",
                      labelText: "Fecha",
                      prefixIcon: Icon(
                        Icons.insert_invitation_outlined,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su fecha de orden",
                      labelText: "Orden",
                      prefixIcon: Icon(
                        Icons.insert_invitation_outlined,
                        color: Color(0xff2f1913),
                      )),
                ),
                DialogExample(),
              ],
            )));
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('¡Formulario Enviado!'),
          content: const Text('Tú información fue enviada correctamente.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Aceptar'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: const Size(50, 50),
        backgroundColor: Colors.black, // Background Color
      ),
      child: const Text('Enviar',
          style: TextStyle(color: Color(0xffffffff), fontSize: 20)),
    );
  }
}
