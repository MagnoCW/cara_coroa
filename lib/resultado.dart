import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  Resultado({super.key, required this.valor});

  String valor;

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  
  String voltar = 'lib/images/botao_voltar.png';


  void _voltar() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      appBar: AppBar(
        backgroundColor: Color(0xff61bd86),
        title: Text(''),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset(widget.valor),
            ),
            TextButton(onPressed: () {_voltar();}, child: Image.asset(voltar),)
          ],
        ),
      ),
    );
  }
}