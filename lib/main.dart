import 'package:cara_coroa/resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String jogar = 'lib/images/botao_jogar.png';
  String cara = 'lib/images/moeda_cara.png';
  String coroa = 'lib/images/moeda_coroa.png';

  Random random = Random();

  late List<String> lista;
  late int indiceAleatorio;

  @override
  void initState() {
    super.initState();
    lista = [cara, coroa];
  }

  void _obterResultado() {
    setState(() {
      indiceAleatorio = random.nextInt(lista.length);
    });
    Navigator.push(context, MaterialPageRoute(builder: (context) => Resultado(valor: lista[indiceAleatorio],)));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      appBar: AppBar(
        backgroundColor: Color(0xff61bd86),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset('lib/images/logo.png'),
            ),
            TextButton(onPressed: () {_obterResultado();}, child: Image.asset(jogar),)
          ],
        ),
      ),
    );
  }
}