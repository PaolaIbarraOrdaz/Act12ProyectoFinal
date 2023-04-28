import 'package:flutter/material.dart';

class Pantalla7 extends StatelessWidget {
  const Pantalla7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pasteles'),
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce20.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel fresa',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce21.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel sirena',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce22.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel blanco',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce23.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel fruta',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce24.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel Mex 2',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce25.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel Mex 3',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce26.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel Mex 2',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce27.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel colores',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce28.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel fruta',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce29.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel fresa',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce30.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel espacio',
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
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce45.png?raw=true'),
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'Pastel dulces',
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
