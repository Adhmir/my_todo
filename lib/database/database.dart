import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import 'dao_database.dart';

part 'database.g.dart';

///flutter pub run build_runner build
/// flutter packages pub run build_runner build
/// rr r r 
/// flutter packages pub run build_runner build

class Tarefas extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tarefa => text().withLength(min: 0, max: 100)();
  TextColumn get descricao => text().nullable()();
  DateTimeColumn get datafinal => dateTime().nullable()();
  BoolColumn get estacompleta => boolean().withDefault(Constant(false))();

   @override
  Set<Column> get primaryKey => {id};
}


@UseMoor(tables: [Tarefas])
class AppDatabase extends _$AppDatabase {
  static AppDatabase instance = AppDatabase._internal();

  TarefaDAO tarefaDAO;
 



  //https://www.youtube.com/watch?v=SJS_kLEUFeQ
  //min 52:15 r r r r rr
  AppDatabase._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )) {
    tarefaDAO = TarefaDAO(this);
   
  }

  @override
  int get schemaVersion => 1;
  //flutter packages pub run build_runner build

}
//flutter packages pub run build_runner build
//flutter packages pub run build_runner build
//r
