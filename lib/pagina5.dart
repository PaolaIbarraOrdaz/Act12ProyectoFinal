import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const Pantalla5());
}

class Pantalla5 extends StatelessWidget {
  const Pantalla5({super.key});

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
                    'Paola Ibarra Ordaz',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'a.20308051280514@cbtis128.edu.mx',
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
          const Text('5'),
        ],
      ),
    );

    Color color = const Color(0xffb80303);

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, 'Jefe'),
        _buildButtonColumn(color, 'Gerente'),
        _buildButtonColumn(color, 'Vendedor'),
      ],
    );

    return MaterialApp(
      title: 'Dulcería Alegrías',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Empleados'),
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
            const Text(
              "Empleados Destacados",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                height: 2.5,
              ),
            ),
            buttonSection,
            miCard2(),
            miCard3(),
            miCard4(),
            miCard5(),
            miCard2(),
            miCard3(),
            miCard4(),
            miCard5(),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745'),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

Card miCard2() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
    margin: const EdgeInsets.all(15),
    elevation: 5,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'Armando Mendoza',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('Empleado encargado de contabilidad.'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://udayananetworking.unud.ac.id/assets/frontend/images/user-m.png'),
          ),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    ),
  );
}

Card miCard3() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
    margin: const EdgeInsets.all(15),
    elevation: 5,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'Julio Regalado',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle:
              Text('Empleado encargado de la caja registradora. (cajero)'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://manager.almadarisp.com/user/img/user.png'),
          ),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    ),
  );
}

Card miCard4() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
    margin: const EdgeInsets.all(15),
    elevation: 5,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'Renata Gonzalez',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle:
              Text('Empleado encargado de la caja registradora. (cajero)'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.pngkit.com/png/full/115-1150342_user-avatar-icon-iconos-de-mujeres-a-color.png'),
          ),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    ),
  );
}

Card miCard5() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
    margin: const EdgeInsets.all(15),
    elevation: 5,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'María López',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('Empleado encargado de las entregas a domicilio.'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/4128/4128314.png'),
          ),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    ),
  );
}
