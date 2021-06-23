import 'package:flutter/material.dart';

// no dart nao precisa por new na hora de instanciar uma nova classe
// quando em uma funçao ou classe os parametros sao declarados dentro de {} quer dizer que nao sao necessarios passar todos
//widget = tudo aquilo que você vê ou utilizado para montar a estrutura da tela
//Flutter tudo é widget
//Scaffold é um esqueleto pre pronto do flutter
void main() {
  runApp(MaterialApp(
      theme: ThemeData(
          primarySwatch:
              Colors.purple),
      home: HomePage()));
}

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment(){
    count++;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
              title: Text("Meu Primeiro App")),
          body: Center(child: Text("Contador\n$count", textAlign: TextAlign.center,)
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {increment();}, 
          child: Icon(Icons.add)),
          );
  }
}