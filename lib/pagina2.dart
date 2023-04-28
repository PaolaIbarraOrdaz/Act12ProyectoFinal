import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const Pantalla2());
}

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Dulcería Alegrías',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Ciudad Juárez, Chihuahua',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.star,
            color: Color(0xffa70e03),
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = const Color(0xffb80303);

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Teléfono'),
        _buildButtonColumn(color, Icons.near_me, 'Ubicación'),
        _buildButtonColumn(color, Icons.share, 'Compartir'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'La mejor tienda de dulces mexicanos en Cd Juárez, Chihuahua. '
        'Encontrarás los mejores productos de excelente calidad, te '
        'encantará la gran variedad de dulces que tenemos para ti. Aprovecha '
        'los nuevos paquetes de fiesta que tenemos para tus celebraciones. '
        'Nuestra misión es lo que nos impulsa a hacer todo lo posible '
        'para seguir con los dulces tradicionales, creando productos de '
        'excelente calidad. Queremos que los dulces típicos mexicanos '
        'no sean olvidados, ya que forman parte de nuestras tradiciones, de nuestra historia.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Dulcería Alegrías',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dulcería Alegrías'),
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
        body: ListView(
          children: [
            Image.network(
              'https://github.com/PaolaIbarraOrdaz/Act8_LayoutFlutLab/blob/master/images/fondo_logo.png?raw=true',
              width: 600,
              height: 360,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
