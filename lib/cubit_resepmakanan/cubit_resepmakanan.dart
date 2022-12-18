import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:resepmakanan/model/resepmakanan_detail.dart';
import 'package:resepmakanan/request/resepmakanan_request.dart';
import 'package:resepmakanan/model/resepmakanan_model.dart';
part 'state_resepmakanan.dart';

class ResepmakananCubit extends Cubit<ResepmakananState> {
  ResepmakananCubit() : super(ResepmakananInitial());

  final ResepmakananRequest resepmakananRequest = ResepmakananRequest();
  ResepmakananModel resepmakananModel = ResepmakananModel();
  DetailresepmakananModel detailresepmakananmodel = DetailresepmakananModel();

  getDataResepmakanan() async {
    emit(ResepmakananInitial());
    resepmakananModel = await resepmakananRequest.getResepmakanan();
    emit(resepmakananData(resepmakananModel));
  }

  getDetailDataResepmakanan(String key) async {
    emit(ResepmakananInitial());
    detailresepmakananmodel =
        await resepmakananRequest.getDetailResepmakanan(key);
    emit(DataDetailResepmakanan(detailresepmakananmodel));
  }
}
