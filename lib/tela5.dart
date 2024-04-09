import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tela5(),
    );
  }
}

class Tela5 extends StatefulWidget {
  const Tela5({super.key});

  @override
  State<Tela5> createState() => _HomeState();
}

class _HomeState extends State<Tela5> {
  TextEditingController userController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  String _textoInfo = "Informe os dados!";

  void _limpar_Tela() {
    userController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Informe os dados";
    });
  }

  void _cadastrar() {
    setState(() {
      String user = userController.text;
      String senha = senhaController.text;


      if (senha.isEmpty) {
        _textoInfo = "Informe corretamente";
      }
      else if (user.isEmpty) {
        _textoInfo = "Informe corretamente";
      }
      else {
        setState(() {
          _textoInfo = "Dados cadastrados com sucesso!";
          userController.text = "";
          senhaController.text = "";
        });


      }




    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produtos"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Produto",
                  ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: userController,
            ),
            TextField(
              obscureText:true ,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Descrição",
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _cadastrar, child: const Text("Cadastrar")),
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
    );
  }
}
