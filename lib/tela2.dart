import 'package:atividade_somativa/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}
//Esta é a função principal do seu aplicativo Flutter. O ponto de entrada da execução.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
// Esta linha declara uma classe chamada MyApp que herda de StatelessWidget. StatelessWidget é um tipo especial de widget que não possui estado interno e sua aparência não muda ao longo do ciclo de vida do aplicativo.
// O construtor da classe MyApp recebe um parâmetro opcional super.key que é herdado da classe base. É uma boa prática usar uma chave para widgets sem estado.
//Este decorador indica que o método build está sobrescrevendo o método da classe base.
//Este método é chamado quando o widget precisa ser construído pela primeira vez e sempre que alguma alteração precisa ser refletida na tela. Ele deve retornar um widget que representa a interface do usuário do aplicativo. O parâmetro context fornece informações sobre o contexto do widget na árvore de widgets do Flutter.
//Esta linha retorna um widget MaterialApp que é o widget raiz da sua aplicação Flutter. Ele fornece funcionalidades básicas para aplicativos MaterialApp, como temas, roteamento e navegação.
      debugShowCheckedModeBanner: false,
      home: const Tela2(),
    );
  }
}
//Esta propriedade define o título do aplicativo, que pode ser exibido na barra de título do sistema operacional.
// Esta propriedade define o tema da aplicação. Neste caso, estamos configurando o esquema de cores a partir de uma cor base (seedColor: Colors.blue) e habilitando o Material 3 (useMaterial3: true). O Material 3 é a linguagem de design mais recente do Flutter.
//Esta propriedade define a widget inicial que será exibida na tela do aplicativo. Aqui, estamos definindo a Tela3 como a tela inicial.


class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String _textoInfo = "Informe seus dados!";

  void _limpar_Tela() { // limpa o texto dos controladores e redefine o texto informativo.
    pesoController.text = "";
    alturaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  void _calcular_imc() { // obtém o peso e a altura dos controladores, calcula o IMC e atualiza o texto informativo de acordo com a faixa de IMC.
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(pesoController.text);
      double imc = peso / pow((altura / 100), 2);

      if (imc < 16.5) {
        _textoInfo = "Desnutrido (${imc})";
      } else if (imc <= 18.5) {
        _textoInfo = "Abaixo do peso (${imc})";
      } else if (imc <= 24.9) {
        _textoInfo = "Peso ideal (${imc})";
      } else if (imc <= 29.9) {
        _textoInfo = "Sobre peso (${imc})";
      } else if (imc <= 34.9) {
        _textoInfo = "Obesidade Grau I(${imc})";
      } else if (imc <= 39.9) {
        _textoInfo = "Obesidade Grau II(${imc})";
      } else {
        _textoInfo = "Obesidade Grau III(${imc})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.green,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "PESO(KG)",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: pesoController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "ALTURA(CM)",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: alturaController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _calcular_imc, child: const Text("Calcular")),
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            ),
          ],
        ),
      ),
    );
  }
}
