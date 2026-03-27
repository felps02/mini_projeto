import 'package:flutter/material.dart';
import '../models/habitos.dart';
import 'habit_details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Habito> habitos = [];
  bool carregando = true;

  
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    carregarHabitos();
  }

  Future<void> carregarHabitos() async {
   
    await Future.delayed(Duration(seconds: 2)); 
    setState(() {
      habitos = [
        Habito(nome: "Beber Água", descricao: "Meta: 2 litros por dia"),
        Habito(nome: "Estudar Flutter", descricao: "Praticar widgets e estados"),
      ];
      carregando = false;
    });
  }

  
  void _exibirDialogoAdicionar() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Novo Hábito"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: "Nome do Hábito"),
            ),
            TextField(
              controller: _descController,
              decoration: InputDecoration(labelText: "Descrição"),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancelar"),
          ),
          ElevatedButton(
            onPressed: () {
              if (_nomeController.text.isNotEmpty) {
                setState(() {
                  habitos.add(Habito(
                    nome: _nomeController.text,
                    descricao: _descController.text,
                  ));
                });
                _nomeController.clear();
                _descController.clear();
                Navigator.pop(context);
              }
            },
            child: Text("Adicionar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Controle de Hábitos")),
      body: carregando
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: habitos.length,
              itemBuilder: (context, index) {
                final habito = habitos[index];
                return ListTile(
                  leading: Checkbox(
                    value: habito.concluido,
                    onChanged: (valor) {
                      setState(() {
                        habito.concluido = valor!;
                      });
                    },
                  ),
                  title: Text(
                    habito.nome,
                    style: TextStyle(
                      decoration: habito.concluido 
                          ? TextDecoration.lineThrough 
                          : TextDecoration.none,
                      color: habito.concluido ? Colors.grey : Colors.black,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                   
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HabitDetailsScreen(habito: habito),
                      ),
                    );
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _exibirDialogoAdicionar,
        child: Icon(Icons.add),
        tooltip: "Adicionar Hábito",
      ),
    );
  }
}