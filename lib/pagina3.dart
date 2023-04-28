import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Paquetes Fiesta'),
            backgroundColor: const Color(0xffb80303),
            actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
            elevation: 8,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Creates border
                  color: Color(0xffffffff)),
              tabs: [
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/4532/4532586.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/84/84239.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3731/3731690.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/85/85339.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/5998/5998967.png'),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                  // <-- SEE HERE
                  decoration: BoxDecoration(color: const Color(0xffb80303)),
                  accountName: Text(
                    "Paola Ibarra Ordaz",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  accountEmail: Text(
                    "a.20308051280514@cbtis128.edu.mx",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://png.pngtree.com/element_our/20190529/ourlarge/pngtree-flat-user-pattern-round-image_1200090.jpg"),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: const Text('Inicio'),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.family_restroom_rounded,
                  ),
                  title: const Text('Sobre Nosotros'),
                  onTap: () {
                    Navigator.pushNamed(context, '/segunda');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.grid_view_rounded,
                  ),
                  title: const Text('Paquetes Fiesta'),
                  onTap: () {
                    Navigator.pushNamed(context, '/tercera');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.cookie,
                  ),
                  title: const Text('Dulces'),
                  onTap: () {
                    Navigator.pushNamed(context, '/cuarta');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.cookie_outlined,
                  ),
                  title: const Text('Dulces Mex'),
                  onTap: () {
                    Navigator.pushNamed(context, '/cuarta2');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.cake_sharp,
                  ),
                  title: const Text('Pasteles'),
                  onTap: () {
                    Navigator.pushNamed(context, '/cuarta3');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_box_rounded,
                  ),
                  title: const Text('Empleados'),
                  onTap: () {
                    Navigator.pushNamed(context, '/quinta');
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/cumplea%C3%B1os.jpg?raw=true'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Cumpleaños',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'La mejor tienda de dulces mexicanos en Cd Juárez, Chihuahua. '
                      'Encontrarás los mejores productos para tus fiestas de cumpleaños. '
                      'Te encantará la gran variedad de dulces que tenemos para ti. Aprovecha '
                      'los nuevos paquetes de fiesta que tenemos para tus celebraciones. '
                      '100 dulces de tu elección con un mensaje especial a solo 300 pesos. '
                      '1 pastel de tu elección a solo 200 pesos. '
                      '50 accesorios para decorar tu fiesta a tu elección, a solo 200 pesos. '
                      '1 piñata personalizada de tu elección a solo 500 pesos',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/bodas.jpg?raw=true'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Bodas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'La mejor tienda de dulces mexicanos en Cd Juárez, Chihuahua. '
                      'Encontrarás los mejores productos para la boda de tus sueños. '
                      'Te encantará la gran variedad de dulces que tenemos para ti. Aprovecha '
                      'los nuevos paquetes de fiesta que tenemos para tus celebraciones. '
                      '300 dulces de tu elección con un mensaje especial a solo 600 pesos. '
                      '1 pastel 3 pisos de tu elección a solo 900 pesos. '
                      '100 accesorios para decorar tu fiesta a tu elección, a solo 400 pesos. '
                      '1 piñata personalizada de tu elección a solo 500 pesos',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/graduacion.jpg?raw=true'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Graduación',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'La mejor tienda de dulces mexicanos en Cd Juárez, Chihuahua. '
                      'Encontrarás los mejores productos para tus fiestas de graduación. '
                      'Te encantará la gran variedad de dulces que tenemos para ti. Aprovecha '
                      'los nuevos paquetes de fiesta que tenemos para tus celebraciones. '
                      '100 dulces de tu elección con un mensaje especial a solo 300 pesos. '
                      '1 pastel de tu elección a solo 200 pesos. '
                      '50 accesorios para decorar tu fiesta a tu elección, a solo 200 pesos. '
                      '1 piñata personalizada de tu elección a solo 500 pesos',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/bautizos.jpg?raw=true'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Bautizos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'La mejor tienda de dulces mexicanos en Cd Juárez, Chihuahua. '
                      'Encontrarás los mejores productos para tus fiestas de bautizo. '
                      'Te encantará la gran variedad de dulces que tenemos para ti. Aprovecha '
                      'los nuevos paquetes de fiesta que tenemos para tus celebraciones. '
                      '150 dulces de tu elección con un mensaje especial a solo 350 pesos. '
                      '1 pastel 2 pisos de tu elección a solo 300 pesos. '
                      '100 accesorios para decorar tu fiesta a tu elección, a solo 300 pesos. '
                      '1 piñata personalizada de tu elección a solo 500 pesos',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/fiestaspatrias.jpeg?raw=true'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Fiestas Patrías',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'La mejor tienda de dulces mexicanos en Cd Juárez, Chihuahua. '
                      'Encontrarás los mejores productos para tus fiestas patrías. '
                      'Te encantará la gran variedad de dulces que tenemos para ti. Aprovecha '
                      'los nuevos paquetes de fiesta que tenemos para tus celebraciones. '
                      '100 dulces de tu elección con un mensaje especial a solo 300 pesos. '
                      '1 pastel de tu elección a solo 200 pesos. '
                      '50 accesorios para decorar tu fiesta a tu elección, a solo 200 pesos. '
                      '1 piñata personalizada de tu elección a solo 500 pesos',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
