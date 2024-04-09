import 'package:flutter/material.dart';
import 'tela2.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _HomePageState();
}

// Esta classe estende State<Tela1>, que a conecta ao widget Tela1.
class _HomePageState extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //Define a barra de aplicativo na parte superior com o título "MENU"
        title: const Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: SingleChildScrollView( //Define a área de conteúdo da tela.
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column( //: Organiza os widgets filhos verticalmente dentro da área rolável.
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.blueGrey,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton( //ElevatedButton: São quatro botões com rótulos "IMC", "Contador", "Cadastro Usuario"
            // e "Cadastro de produtos". Cada botão usa onPressed para definir sua ação quando pressionado.
            // Navigator.pushNamed é usado para navegar para diferentes telas com base nos cliques dos botões.
            // Os argumentos do botão especificam os nomes das rotas ('/segunda', '/terceira', etc.) provavelmente// correspondentes a outras classes de widget em seu projeto (por exemplo, Tela2, Tela3, etc.).
                      child: const Text("IMC"),
                      onPressed: () {
                        Navigator.pushNamed (context, '/segunda');
                      }),
                  ElevatedButton(
                      child: const Text("Contador"),
                      onPressed: () {
                        Navigator.pushNamed (context, '/terceira');
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro Usuario"),
                      onPressed: () {
                        Navigator.pushNamed (context, '/quarta');
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro de produtos"),
                      onPressed: () {
                        Navigator.pushNamed (context, '/quinta');
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
