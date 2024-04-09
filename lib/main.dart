import 'package:flutter/material.dart';
import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';
import 'tela4.dart';
import 'tela5.dart';


void main () {
  runApp (const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas nomeadas',
      initialRoute: '/',
      routes: { '/': (context) => const Tela1(),
        '/segunda': (context) => const Tela2(),
        '/terceira': (context) => const Tela3(),
        '/quarta': (context) => const Tela4(),
        '/quinta': (context) =>  const Tela5(),

//Esse código configura o aplicativo principal usando rotas nomeadas para navegar entre as telas (Tela1, Tela2, etc.).
// Ao clicar em um botão na Tela1, a rota apropriada é carregada de acordo com o nome definido (/segunda, /terceira, etc.).
// Este é um exemplo básico de rotas nomeadas. Você pode expandir esse conceito para implementar uma navegação mais complexa em seu aplicativo.

      },
    );
  }
}