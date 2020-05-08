import 'package:flutter/material.dart';
import 'package:my_todo/scr/homepage.dart';
import 'package:my_todo/scr/inserir.dart';
import 'package:provider/provider.dart';
import 'model/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ModelTarefas>(
          create: (_) => ModelTarefas(),
        ),
      ],
      child: MaterialApp(
        title: 'Tarefas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Homepage(),
        routes: {
          '/inserir': (_) => Inserir(),
          '/home': (_) => Homepage(),
        },
      ),
    );
  }
}
