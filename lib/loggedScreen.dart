import 'package:flutter/material.dart';

class Loggedscreen extends StatefulWidget {
  final String user;

  const Loggedscreen({super.key, required this.user});

  @override
  State<Loggedscreen> createState() => _LoggedscreenState();
}

class _LoggedscreenState extends State<Loggedscreen> {
  String get user => this.user;
  TextEditingController _nomeC = TextEditingController();
  TextEditingController _endC = TextEditingController();
  TextEditingController _cursoC = TextEditingController();
  TextEditingController _cidadeC = TextEditingController();
  TextEditingController _paisC = TextEditingController();

  void _showInfo() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Dados Salvados"),
          content: Text("Nome: ${_nomeC.text}\nEndereço: ${_endC.text}\nCurso: ${_cursoC.text}\nCidade: ${_cidadeC.text}\nPaís: ${_paisC.text}"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.done),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 255, 118, 109),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Main Page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bem vindo, ${widget.user}"),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Column(
                spacing: 10.0,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    controller: _nomeC,
                    decoration: InputDecoration(
                      labelText: "Nome",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  TextFormField(
                    controller: _endC,
                    decoration: InputDecoration(
                      labelText: "Endereço",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  TextFormField(
                    controller: _cursoC,
                    decoration: InputDecoration(
                      labelText: "Curso",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  TextFormField(
                    controller: _cidadeC,
                    
                    decoration: InputDecoration(
                      labelText: "Cidade",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  TextFormField(
                    controller: _paisC,
                    decoration: InputDecoration(
                      labelText: "País",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _showInfo,
                    child: Text("Salvar"),
                    ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Voltar"))
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
