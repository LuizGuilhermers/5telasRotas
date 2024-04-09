import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Tela3(),
    );
  }
}

class Tela3 extends StatefulWidget {
  const Tela3 ({super.key});


  @override
  State<Tela3> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Tela3> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _limpar_Tela() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Contador"),
        centerTitle: true,
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh)),
        ],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'O número de vezes que você clicou foi:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: _incrementCounter,
                      child: const Icon(Icons.add)),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ]
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */
    );
  }
}
