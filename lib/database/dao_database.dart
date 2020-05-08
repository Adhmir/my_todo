

import 'dart:async';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor/moor.dart';
import 'package:my_todo/database/database.dart';
//flutter packages pub run build_runner build
///flutter packages pub run build_runner watch
//flutter pub run build_runner build //rrr
part 'dao_database.g.dart';

///rrrr r rr r r  r rr rrrrrr RR rr rr
@UseDao(
  tables: [Tarefas],
  
)
class TarefaDAO extends DatabaseAccessor<AppDatabase> with _$TarefaDAOMixin {
  TarefaDAO(AppDatabase db) : super(db);

  Future<List<Tarefa>> listTodasTar() => select(tarefas).get();
  Stream<List<Tarefa>> verTodasTar() => select(tarefas).watch();
  Future inserirTar(Tarefa tarefa) => into(tarefas).insert(tarefa);
  Future atualizaTar(Tarefa tarefa) => update(tarefas).replace(tarefa);
  Future deletaTar(Tarefa tarefa) => delete(tarefas).delete(tarefa);

  ///rrrr rrrrrrrr RR r rr
  /////flutter packages pub run build_runner build
}

