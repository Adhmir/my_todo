import 'package:flutter/material.dart';
import 'package:my_todo/database/database.dart';
import 'package:my_todo/model/models.dart';
import 'package:provider/provider.dart';

class Inserir extends StatefulWidget {
  @override
  _InserirState createState() => _InserirState();
}

class _InserirState extends State<Inserir> {
  @override
  Widget build(BuildContext context) {
    final mdlTarefas = Provider.of<ModelTarefas>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Adiconar Tarefas')),
      body: Column(
        children: <Widget>[
          //Tarefa
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'Tarefa'),
                onChanged: (text) {
                  mdlTarefas.tarefa = text;
                },
              ),
            ),
          ),
          //Descrição
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                maxLines: 6,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'Descrição'),
                onChanged: (text) {
                  mdlTarefas.descricao = text;
                },
              ),
            ),
          ),
          //Nível
          //Data e Adicionar
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.green,
                        child: IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () async {
                              mdlTarefas.datafinal = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2015),
                                  lastDate: DateTime(2060));
                            }),
                      ),
                    ),
                  ),
                  Container(width: 10),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.green,
                        child: IconButton(
                            icon: Icon(Icons.add_box),
                            onPressed: () {
                              AppDatabase.instance.tarefaDAO.inserirTar(
                                Tarefa(
                                    id: null,
                                    tarefa: mdlTarefas.tarefa,
                                    descricao: mdlTarefas.descricao,
                                    datafinal: mdlTarefas.datafinal,
                                    estacompleta: false),
                              );
                              Navigator.of(context).pushNamed('/home');
                              mdlTarefas.tarefa = '';
                              mdlTarefas.descricao = '';
                              mdlTarefas.datafinal = DateTime.now();
                            }),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
