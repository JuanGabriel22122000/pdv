import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              BotaoInicial(
                icone: Icons.monetization_on,
                mensagem: "Vendas",
                cor: Colors.green,
              ),
              BotaoInicial(
                icone: Icons.receipt_long,
                mensagem: "Fechamentos",
                cor: Colors.yellowAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoInicial(
                icone: Icons.autorenew,
                mensagem: "Sincronizar",
                cor: Colors.blueAccent,
              ),
              BotaoInicial(
                icone: Icons.build,
                mensagem: "Configurar",
                cor: Colors.black,
              )
            ],
          )
        ],
      ),
    ));
  }
}

class BotaoInicial extends StatelessWidget {
  final IconData icone;
  final String mensagem;
  final Color cor;

  const BotaoInicial(
      {required this.icone, required this.mensagem, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(2),
          padding: EdgeInsetsGeometry.infinity,
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(10),
            // ignore: prefer_const_constructors
          ),
        ),
        Column(
          children: [
            IconButton(
                icon: Icon(icone),
                color: Colors.white,
                iconSize: 95,
                onPressed: () {}),
            Text(
              textDirection: TextDirection.ltr,
              mensagem,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
