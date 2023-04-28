import 'package:flutter/material.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dulces'),
        backgroundColor: const Color(0xffb80303),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        elevation: 8,
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
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce1.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Duvalin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce2.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Bocadin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce3.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Winis',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce4.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pandistas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce5.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Nugs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce6.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Snickers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce7.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Jugos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce8.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Bubu Lubu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce9.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Huevo Kinder',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce10.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Conejos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce11.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'M&Ms',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce12.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Canasta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce13.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Hersheys',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce14.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Paletas sandía',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce15.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Coronado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce16.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Lucas Muecas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce17.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Doritos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce18.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Giro',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce19.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Galletas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            shadowColor: Colors.red,
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce44.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Paleta payaso',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black, // Background Color
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
