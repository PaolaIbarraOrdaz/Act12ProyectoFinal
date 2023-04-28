import 'package:flutter/material.dart';

class Formulario3 extends StatelessWidget {
  const Formulario3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario Empleados'),
          backgroundColor: const Color(0xffb80303),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
          elevation: 8,
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: const [
                Text(
                  "Ingresa los siguientes datos",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                Image(
                  image: NetworkImage(
                      'https://demismanos.org/wp-content/uploads/2021/01/shutterstock_523592923-1024x683.jpg'),
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
                        Icons.account_box_rounded,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su Apellido Paterno",
                      labelText: "Apellido Paterno",
                      prefixIcon: Icon(
                        Icons.account_box_rounded,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese su Apellido Materno",
                      labelText: "Apellido Materno",
                      prefixIcon: Icon(
                        Icons.account_box_rounded,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su puesto",
                      labelText: "Puesto",
                      prefixIcon: Icon(
                        Icons.group,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su correo",
                      labelText: "Correo",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su teléfono",
                      labelText: "Teléfono",
                      prefixIcon: Icon(
                        Icons.call,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su fecha de ingreso",
                      labelText: "Fecha de Ingreso",
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
