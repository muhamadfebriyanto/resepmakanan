part of 'cubit_resepmakanan.dart';

@immutable
abstract class ResepmakananState {}

class ResepmakananInitial extends ResepmakananState {}

class resepmakananData extends ResepmakananState {
  final ResepmakananModel data;
  resepmakananData(this.data);
}

class DataDetailResepmakanan extends ResepmakananState {
  final DetailresepmakananModel data;
  DataDetailResepmakanan(this.data);
}
