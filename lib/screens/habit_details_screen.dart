import 'package:flutter/material.dart';
import '../models/habitos.dart';

class HabitDetailsScreen extends StatelessWidget {
  final Habito habito;

  HabitDetailsScreen({required this.habito});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(habito.nome)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Detalhes do Hábito:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 10),
            Text(habito.descricao, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text(
              "Status: ${habito.concluido ? 'Concluído ✅' : 'Pendente ⏳'}",
              style: TextStyle(fontSize: 16, color: habito.concluido ? Colors.green : Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}