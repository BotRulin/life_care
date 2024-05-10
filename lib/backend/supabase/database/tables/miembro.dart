import '../database.dart';

class MiembroTable extends SupabaseTable<MiembroRow> {
  @override
  String get tableName => 'miembro';

  @override
  MiembroRow createRow(Map<String, dynamic> data) => MiembroRow(data);
}

class MiembroRow extends SupabaseDataRow {
  MiembroRow(super.data);

  @override
  SupabaseTable get table => MiembroTable();

  String get correo => getField<String>('correo')!;
  set correo(String value) => setField<String>('correo', value);

  int get idgrp => getField<int>('idgrp')!;
  set idgrp(int value) => setField<int>('idgrp', value);
}
