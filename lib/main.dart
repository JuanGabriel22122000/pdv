import 'package:flutter/material.dart';
import 'package:pdv/MenuInicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Balcao(),
    );
  }
}

class Balcao extends StatelessWidget {
  const Balcao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: const [
            OpcaoMenuFechar(),
            OpcaoMenu(
              icone: Icons.keyboard,
              coricone: Colors.grey,
              descricao: "Teclado",
            ),
            OpcaoMenu(
              icone: Icons.calculate,
              coricone: Colors.blueAccent,
              descricao: "Calculadora",
            ),
            OpcaoMenu(
              icone: Icons.receipt_long,
              coricone: Colors.blueAccent,
              descricao: "Relatórios",
            ),
            OpcaoMenu(
              icone: Icons.receipt_outlined,
              coricone: Colors.blueAccent,
              descricao: "Cupons",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 48, 87),
      ),
      body: Container(),
    );
  }
}

class OpcaoMenu extends StatelessWidget {
  final IconData icone;
  final Color coricone;
  final String descricao;

  const OpcaoMenu(
      {Key? key,
      required this.icone,
      required this.coricone,
      required this.descricao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.3,
            color: Color(0xFF000000),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Icon(
              icone,
              color: coricone,
              size: 35,
            ),
          ),
          Text(
            descricao,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Arial',
            ),
          ),
        ],
      ),
    );
  }
}

class OpcaoMenuFechar extends StatelessWidget {
  const OpcaoMenuFechar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 1, 48, 87),
        border: Border(
          bottom: BorderSide(
            width: 1.3,
            color: Color(0xFF000000),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
          Text(
            "Voltar",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arial',
            ),
          ),
        ],
      ),
    );
  }
}
