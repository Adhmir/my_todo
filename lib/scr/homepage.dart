import 'package:flutter/material.dart';
import 'package:my_todo/database/database.dart';

//import 'package:my_todo/database/dao_database.g.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tarefas')),
      body: StreamBuilder(
        stream: AppDatabase.instance.tarefaDAO.verTodasTar(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Container(
              child: Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.blue,
                  strokeWidth: 10,
                ),
              ),
            );
          List<Tarefa> listTar = snapshot.data;
          return ListView.builder(
              itemCount: listTar.length,
              itemBuilder: (_, index) {
                return Card(
                  color: Colors.green,
                  child: ListTile(
                    leading: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          AppDatabase.instance.tarefaDAO
                              .deletaTar(listTar[index]);
                        }),
                    title: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Tarefa: ${listTar[index].tarefa.toString()}',
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(listTar[index].datafinal.day.toString()),
                              Text(' / '),
                              Text(listTar[index].datafinal.month.toString()),
                              Text(' / '),
                              Text(listTar[index].datafinal.year.toString()),
                            ],
                          ),
                        )
                      ],
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(snapshot.data[index].descricao.toString()),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
      ), //r
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 60,
                  color: Colors.green[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Adicionar Tarefa'),
                      Icon(Icons.add_box),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/inserir');
              },
            ),
          ),
        ],
      ),
    );
  }
}


