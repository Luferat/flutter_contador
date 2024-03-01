import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Contador de Gente",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas = 0;
  String _msgText = "Pode entrar!";

  void _changePessoas(int numero) {
    setState(() {
      _pessoas += numero;
      if (_pessoas < 0) {
        _msgText = "Abaixo de 0!";
      } else if (_pessoas <= 10) {
        _msgText = "Pode entrar!";
      } else {
        _msgText = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/fundo.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Column(
          // Alinha o conteúdo da coluna no meio vertical
          mainAxisAlignment: MainAxisAlignment.center,
          // Widgets da coluna
          children: [
            // Primeira linha: um texto
            Text(
              "Pessoas: $_pessoas",
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                // backgroundColor: Colors.yellow,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      _changePessoas(1);
                    },
                    child: const Text(
                      "+1",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      _changePessoas(-1);
                    },
                    child: const Text(
                      "-1",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Segunda linha: outro texto
            Text(
              _msgText,
              style: const TextStyle(
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),
            )
          ],
        )
      ],
    );
  }
}
