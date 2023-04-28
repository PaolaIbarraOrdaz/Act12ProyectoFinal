import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              const Text(
                "Formularios",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2.5,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text(
                      '1',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xff000000),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form1');
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      '2',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xff000000),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form2');
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      '3',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xff000000),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form3');
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      '4',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: const Color(0xff000000),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form4');
                    },
                  ),
                ],
              ),
              miCardImage(),
              miCard(),
              miCard2(),
              miCard3(),
              miCard4(),
              miCard5(),
            ],
          )),
    );
  }
}

Card miCardImage() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
    margin: const EdgeInsets.all(15),
    shadowColor: Colors.red,
    elevation: 10,
    child: Column(
      children: <Widget>[
        const Image(
          image: NetworkImage(
              'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/3.png?raw=true'),
        ),
      ],
    ),
  );
}

Card miCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'Palanquetas',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              'Barra de cacahuate pelado y sin cáscara mezclado con jarabe de piloncillo, su textura es crujiente.'),
          leading: Image(
            image: NetworkImage(
                'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce31.png?raw=true'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff9f0303),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () => {},
                child: const Text('Comprar')),
          ],
        )
      ],
    ),
  );
}

Card miCard2() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'Glorias',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              'Las glorias de Linares es un dulce tradicional de Nuevo León basado en el dulce de leche.'),
          leading: Image(
            image: NetworkImage(
                'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce32.png?raw=true'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff9f0303),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () => {},
                child: const Text('Comprar')),
          ],
        )
      ],
    ),
  );
}

Card miCard3() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'Ate',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              'El ate es un dulce producido en  México​​​ producido en molde o en barra, elaborado con distintas recetas'),
          leading: Image(
            image: NetworkImage(
                'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce33.png?raw=true'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff9f0303),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () => {},
                child: const Text('Comprar')),
          ],
        )
      ],
    ),
  );
}

Card miCard4() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'Mueganos',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              'Bolas fabricadas con cuadros pequeños de pasta de harina de trigo, cubiertos con caramelo y pegados unos con otros.'),
          leading: Image(
            image: NetworkImage(
                'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce34.png?raw=true'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff9f0303),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () => {},
                child: const Text('Comprar')),
          ],
        )
      ],
    ),
  );
}

Card miCard5() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(
            'Alegrías',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              'Es la semilla del amaranto  tostadas y unidas por miel de azúcar, generalmente decoradas con nueces y/o pasas.'),
          leading: Image(
            image: NetworkImage(
                'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/dulce35.png?raw=true'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff9f0303),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () => {},
                child: const Text('Comprar')),
          ],
        )
      ],
    ),
  );
}
