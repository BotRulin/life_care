import '../database.dart';

class ActividadTable extends SupabaseTable<ActividadRow> {
  @override
  String get tableName => 'actividad';

  @override
  ActividadRow createRow(Map<String, dynamic> data) => ActividadRow(data);
}

class ActividadRow extends SupabaseDataRow {
  ActividadRow(super.data);

  @override
  SupabaseTable get table => ActividadTable();

  int get idact => getField<int>('idact')!;
  set idact(int value) => setField<int>('idact', value);

  String get nameact => getField<String>('nameact')!;
  set nameact(String value) => setField<String>('nameact', value);

  String? get descact => getField<String>('descact');
  set descact(String? value) => setField<String>('descact', value);

  String? get photoact => getField<String>('photoact');
  set photoact(String? value) => setField<String>('photoact', value);

  String? get videoact => getField<String>('videoact');
  set videoact(String? value) => setField<String>('videoact', value);

  String? get locationact => getField<String>('locationact');
  set locationact(String? value) => setField<String>('locationact', value);

  String? get audioact => getField<String>('audioact');
  set audioact(String? value) => setField<String>('audioact', value);

  DateTime? get dateact => getField<DateTime>('dateact');
  set dateact(DateTime? value) => setField<DateTime>('dateact', value);

  PostgresTime? get timeact => getField<PostgresTime>('timeact');
  set timeact(PostgresTime? value) => setField<PostgresTime>('timeact', value);

  bool? get cadadia => getField<bool>('cadadia');
  set cadadia(bool? value) => setField<bool>('cadadia', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  int? get idgrp => getField<int>('idgrp');
  set idgrp(int? value) => setField<int>('idgrp', value);
}
