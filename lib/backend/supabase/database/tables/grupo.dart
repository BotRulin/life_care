import '../database.dart';

class GrupoTable extends SupabaseTable<GrupoRow> {
  @override
  String get tableName => 'grupo';

  @override
  GrupoRow createRow(Map<String, dynamic> data) => GrupoRow(data);
}

class GrupoRow extends SupabaseDataRow {
  GrupoRow(super.data);

  @override
  SupabaseTable get table => GrupoTable();

  int get idgrp => getField<int>('idgrp')!;
  set idgrp(int value) => setField<int>('idgrp', value);

  String get namegrp => getField<String>('namegrp')!;
  set namegrp(String value) => setField<String>('namegrp', value);

  String? get qr => getField<String>('qr');
  set qr(String? value) => setField<String>('qr', value);
}
