import 'package:flutter/material.dart';

void main() {
  runApp(Parcial1());
}

class Parcial1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial I - ETPS-3!",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Registro(),
    );
  }
}

class Registro extends StatefulWidget {
  Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(titulo),
        // ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   mainAxisSize: MainAxisSize.max,
        //   children: <Widget>[nombre(), fondo()],
        // ),
        body: ListView(children: <Widget>[fondo()]));
  }
}

Widget fondo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://media.idownloadblog.com/wp-content/uploads/2021/09/Light_Beams_Dark_Gray_Light-iPhone-13-Pro-official-apple-wallpaper.jpg"),
            )),
    child: Center(
      child: Column(
        children: <Widget>[
          paddingStyle(),
          nombre(),
          misDatos1(),
          misDatos2(),
          paddingStyleBtn(),
          imagenLogo(),
          paddingStyleBtn(),
          txtCarnet(),
          txtNombre(),
          txtApellidos(),
          txtDireccion(),
          txtPassword(),
          txtRepassword(),
          txtCorreo(),
          paddingStyleBtn(),
          btnIngresar(),
          paddingStyleBtn(),
          btnCancelar(),
          paddingStyle(),
        ],
      ),
    ),
  );
}

Widget nombre() {
  return Text("Parcial I - ETPS-3!",
      style: TextStyle(color: Colors.grey, fontSize: 35, fontWeight: FontWeight. bold));
}

Widget imagenLogo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 100),
    height: 200,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: NetworkImage(
                "https://png.pngtree.com/element_origin_min_pic/16/11/02/bd886d7ccc6f8dd8db17e841233c9656.jpg"))),
  );
}

Widget misDatos1() {
  return Text("Alejandra Guadalupe Majano Abrego - #2536882018",
      style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Hind'));
}

Widget misDatos2() {
  return Text("Elmer Giovanni Raymundo Hernández - #2504912018",
      style: TextStyle(color: Colors.white, fontSize: 15));
}

Widget paddingStyle() {
  return Padding(
    padding: EdgeInsets.all(16.0),
  );
}

Widget paddingStyleBtn() {
  return Padding(
    padding: EdgeInsets.all(3.0),
  );
}

Widget txtCarnet() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Ingrese su carnet",
        fillColor: Colors.white54,
        filled: true,
        prefixIcon: Icon(Icons.numbers),
      ),
    ),
  );
}

Widget txtNombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Ingrese su nombre",
        fillColor: Colors.white54,
        filled: true,
        prefixIcon: Icon(Icons.people),
      ),
    ),
  );
}

Widget txtApellidos() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Ingrese sus apellidos",
        fillColor: Colors.white54,
        filled: true,
        prefixIcon: Icon(Icons.people),
      ),
    ),
  );
}

Widget txtDireccion() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
    child: TextField(
      maxLines: 20,
      decoration: InputDecoration(
        hintText: "Ingrese su dirección",
        fillColor: Colors.white54,
        filled: true,
        prefixIcon: Icon(Icons.house),
      ),
    ),
  );
}

Widget txtPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Ingrese su contraseña",
          fillColor: Colors.white54,
          filled: true,
          prefixIcon: Icon(Icons.password)),
    ),
  );
}

Widget txtRepassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Confirme su contraseña",
          fillColor: Colors.white54,
          filled: true,
          prefixIcon: Icon(Icons.password)),
    ),
  );
}

Widget txtCorreo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
    child: TextField(
      style: TextStyle(fontSize: 15),
      maxLines: null,
      decoration: InputDecoration(
        hintText: "Ingrese su correo",
        fillColor: Colors.white54,
        filled: true,
        prefixIcon: Icon(Icons.mail),
      ),
    ),
  );
}

Widget btnIngresar() {
  return FlatButton(
    shape: StadiumBorder(),
    color: Colors.blueAccent,
    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
    onPressed: () {},
    child: Text(
      "Ingresar",
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
  );
}

Widget btnCancelar() {
  return FlatButton(
    shape: StadiumBorder(),
    color: Colors.red,
    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
    onPressed: () {},
    child: Text(
      "Cancelar",
      style: TextStyle(fontSize: 18, color: Colors.black),
    ),
  );
}
