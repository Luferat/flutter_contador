import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Gente",
      // Cria uma coluna na home
      // O conteúdo da coluna é centralizado horizontalmente
      home: Column(
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
              TextButton(
                onPressed: () {},
                child: const Text(
                  "+1",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "-1",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
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
      )));
}
