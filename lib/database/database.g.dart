// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Tarefa extends DataClass implements Insertable<Tarefa> {
  final int id;
  final String tarefa;
  final String descricao;
  final DateTime datafinal;
  final bool estacompleta;
  Tarefa(
      {@required this.id,
      @required this.tarefa,
      this.descricao,
      this.datafinal,
      @required this.estacompleta});
  factory Tarefa.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Tarefa(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tarefa:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}tarefa']),
      descricao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descricao']),
      datafinal: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}datafinal']),
      estacompleta: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}estacompleta']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || tarefa != null) {
      map['tarefa'] = Variable<String>(tarefa);
    }
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || datafinal != null) {
      map['datafinal'] = Variable<DateTime>(datafinal);
    }
    if (!nullToAbsent || estacompleta != null) {
      map['estacompleta'] = Variable<bool>(estacompleta);
    }
    return map;
  }

  factory Tarefa.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tarefa(
      id: serializer.fromJson<int>(json['id']),
      tarefa: serializer.fromJson<String>(json['tarefa']),
      descricao: serializer.fromJson<String>(json['descricao']),
      datafinal: serializer.fromJson<DateTime>(json['datafinal']),
      estacompleta: serializer.fromJson<bool>(json['estacompleta']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tarefa': serializer.toJson<String>(tarefa),
      'descricao': serializer.toJson<String>(descricao),
      'datafinal': serializer.toJson<DateTime>(datafinal),
      'estacompleta': serializer.toJson<bool>(estacompleta),
    };
  }

  Tarefa copyWith(
          {int id,
          String tarefa,
          String descricao,
          DateTime datafinal,
          bool estacompleta}) =>
      Tarefa(
        id: id ?? this.id,
        tarefa: tarefa ?? this.tarefa,
        descricao: descricao ?? this.descricao,
        datafinal: datafinal ?? this.datafinal,
        estacompleta: estacompleta ?? this.estacompleta,
      );
  @override
  String toString() {
    return (StringBuffer('Tarefa(')
          ..write('id: $id, ')
          ..write('tarefa: $tarefa, ')
          ..write('descricao: $descricao, ')
          ..write('datafinal: $datafinal, ')
          ..write('estacompleta: $estacompleta')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          tarefa.hashCode,
          $mrjc(descricao.hashCode,
              $mrjc(datafinal.hashCode, estacompleta.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tarefa &&
          other.id == this.id &&
          other.tarefa == this.tarefa &&
          other.descricao == this.descricao &&
          other.datafinal == this.datafinal &&
          other.estacompleta == this.estacompleta);
}

class TarefasCompanion extends UpdateCompanion<Tarefa> {
  final Value<int> id;
  final Value<String> tarefa;
  final Value<String> descricao;
  final Value<DateTime> datafinal;
  final Value<bool> estacompleta;
  const TarefasCompanion({
    this.id = const Value.absent(),
    this.tarefa = const Value.absent(),
    this.descricao = const Value.absent(),
    this.datafinal = const Value.absent(),
    this.estacompleta = const Value.absent(),
  });
  TarefasCompanion.insert({
    this.id = const Value.absent(),
    @required String tarefa,
    this.descricao = const Value.absent(),
    this.datafinal = const Value.absent(),
    this.estacompleta = const Value.absent(),
  }) : tarefa = Value(tarefa);
  static Insertable<Tarefa> custom({
    Expression<int> id,
    Expression<String> tarefa,
    Expression<String> descricao,
    Expression<DateTime> datafinal,
    Expression<bool> estacompleta,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tarefa != null) 'tarefa': tarefa,
      if (descricao != null) 'descricao': descricao,
      if (datafinal != null) 'datafinal': datafinal,
      if (estacompleta != null) 'estacompleta': estacompleta,
    });
  }

  TarefasCompanion copyWith(
      {Value<int> id,
      Value<String> tarefa,
      Value<String> descricao,
      Value<DateTime> datafinal,
      Value<bool> estacompleta}) {
    return TarefasCompanion(
      id: id ?? this.id,
      tarefa: tarefa ?? this.tarefa,
      descricao: descricao ?? this.descricao,
      datafinal: datafinal ?? this.datafinal,
      estacompleta: estacompleta ?? this.estacompleta,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tarefa.present) {
      map['tarefa'] = Variable<String>(tarefa.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (datafinal.present) {
      map['datafinal'] = Variable<DateTime>(datafinal.value);
    }
    if (estacompleta.present) {
      map['estacompleta'] = Variable<bool>(estacompleta.value);
    }
    return map;
  }
}

class $TarefasTable extends Tarefas with TableInfo<$TarefasTable, Tarefa> {
  final GeneratedDatabase _db;
  final String _alias;
  $TarefasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tarefaMeta = const VerificationMeta('tarefa');
  GeneratedTextColumn _tarefa;
  @override
  GeneratedTextColumn get tarefa => _tarefa ??= _constructTarefa();
  GeneratedTextColumn _constructTarefa() {
    return GeneratedTextColumn('tarefa', $tableName, false,
        minTextLength: 0, maxTextLength: 100);
  }

  final VerificationMeta _descricaoMeta = const VerificationMeta('descricao');
  GeneratedTextColumn _descricao;
  @override
  GeneratedTextColumn get descricao => _descricao ??= _constructDescricao();
  GeneratedTextColumn _constructDescricao() {
    return GeneratedTextColumn(
      'descricao',
      $tableName,
      true,
    );
  }

  final VerificationMeta _datafinalMeta = const VerificationMeta('datafinal');
  GeneratedDateTimeColumn _datafinal;
  @override
  GeneratedDateTimeColumn get datafinal => _datafinal ??= _constructDatafinal();
  GeneratedDateTimeColumn _constructDatafinal() {
    return GeneratedDateTimeColumn(
      'datafinal',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estacompletaMeta =
      const VerificationMeta('estacompleta');
  GeneratedBoolColumn _estacompleta;
  @override
  GeneratedBoolColumn get estacompleta =>
      _estacompleta ??= _constructEstacompleta();
  GeneratedBoolColumn _constructEstacompleta() {
    return GeneratedBoolColumn('estacompleta', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, tarefa, descricao, datafinal, estacompleta];
  @override
  $TarefasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tarefas';
  @override
  final String actualTableName = 'tarefas';
  @override
  VerificationContext validateIntegrity(Insertable<Tarefa> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('tarefa')) {
      context.handle(_tarefaMeta,
          tarefa.isAcceptableOrUnknown(data['tarefa'], _tarefaMeta));
    } else if (isInserting) {
      context.missing(_tarefaMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao'], _descricaoMeta));
    }
    if (data.containsKey('datafinal')) {
      context.handle(_datafinalMeta,
          datafinal.isAcceptableOrUnknown(data['datafinal'], _datafinalMeta));
    }
    if (data.containsKey('estacompleta')) {
      context.handle(
          _estacompletaMeta,
          estacompleta.isAcceptableOrUnknown(
              data['estacompleta'], _estacompletaMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tarefa map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tarefa.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TarefasTable createAlias(String alias) {
    return $TarefasTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TarefasTable _tarefas;
  $TarefasTable get tarefas => _tarefas ??= $TarefasTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tarefas];
}
