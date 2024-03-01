import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Gente",
    home: Stack(
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
          const Text(
            "Pessoas: 0",
            style: TextStyle(
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
                  onPressed: () {},
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
                  onPressed: () {},
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
          const Text(
            "Pode entrar",
            style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontSize: 30.0,
            ),
          )
        ],
      )
      ],
    ),
  ));
}
