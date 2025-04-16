import 'package:atividade1/loggedScreen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  var _isObscured = true;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Login falido"),
          content: Text("Nome de usuário ou senha incorretos"),
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
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 5.0,
        children: [
          CircleAvatar(),
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: "Nome de usuário",
              border: OutlineInputBorder(),
            ),
          ),
          TextFormField(
            obscureText: _isObscured,
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: "Senha",
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                icon:
                    _isObscured
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_nameController.text == "admin" &&
                  _passwordController.text == "123") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Loggedscreen(
                        user: _nameController.text
                      );
                    },
                  ),
                );
              } else {
                _showDialog();
              }
            },
            child: Text("Enviar"),
          ),
        ],
      ),
    );
  }
}
