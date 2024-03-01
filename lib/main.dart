import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      title: "Contador de Gente",
      // Cria uma coluna na home
      // O conteúdo da coluna é centralizado horizontalmente
      home: Column(
        // Alinha o conteúdo da coluna no meio vertical
        mainAxisAlignment: MainAxisAlignment.center,
        // Widgets da coluna
        children: [
          // Primeira linha: um texto
          Text(
            "Pessoas: 0",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              // backgroundColor: Colors.yellow,
            ),
          ),
          // Segunda linha: outro texto
          Text(
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
