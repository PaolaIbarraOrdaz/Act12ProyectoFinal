import 'package:flutter/material.dart';

class Formulario2 extends StatelessWidget {
  const Formulario2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario Clientes'),
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
                      'https://png.pngtree.com/thumb_back/fw800/background/20220314/pngtree-market-segmentation-and-customer-care-image_1048390.jpg'),
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
                      hintText: "Ingrese su correo",
                      labelText: "Correo",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su dirección",
                      labelText: "Dirección",
                      prefixIcon: Icon(
                        Icons.add_location_rounded,
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
