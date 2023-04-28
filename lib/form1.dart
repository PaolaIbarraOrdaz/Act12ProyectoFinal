import 'package:flutter/material.dart';

class Formulario1 extends StatelessWidget {
  const Formulario1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulario Productos'),
          backgroundColor: const Color(0xffb80303),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
          elevation: 8,
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: const [
                Text(
                  "Ingresa los siguientes datos",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                Image(
                  image: NetworkImage(
                      'https://media.istockphoto.com/id/1126477096/es/foto/dulces-mexicanos-artesanales-a-mano.jpg?s=1024x1024&w=is&k=20&c=NGqw0EIECDws4MpLv7So2Kn_MIjj1c095Bsujt8Yj5A='),
                  width: 500,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su ID",
                      labelText: "ID",
                      prefixIcon: Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese el nombre",
                      labelText: "Nombre",
                      prefixIcon: Icon(
                        Icons.shopping_cart,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su precio",
                      labelText: "Precio",
                      prefixIcon: Icon(
                        Icons.money,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese la descripción",
                      labelText: "Descripción",
                      prefixIcon: Icon(
                        Icons.assignment,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese la cantidad",
                      labelText: "Cantidad",
                      prefixIcon: Icon(
                        Icons.dynamic_feed_rounded,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese la categoría",
                      labelText: "Categoría",
                      prefixIcon: Icon(
                        Icons.category_rounded,
                        color: Color(0xff2f1913),
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingrese su paquete",
                      labelText: "Paquete",
                      prefixIcon: Icon(
                        Icons.grid_view_rounded,
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
