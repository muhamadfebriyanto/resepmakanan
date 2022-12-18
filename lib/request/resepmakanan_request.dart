import 'package:dio/dio.dart';
import 'package:resepmakanan/model/resepmakanan_detail.dart';
import 'package:resepmakanan/model/resepmakanan_model.dart';

class ResepmakananRequest {
  Future<ResepmakananModel> getResepmakanan() async {
    Response response = await Dio()
        .get('https://masak-apa-tomorisakura.vercel.app/api/recipes');
    return ResepmakananModel.fromJson(response.data);
  }

  Future<DetailresepmakananModel> getDetailResepmakanan(String key) async {
    Response response = await Dio()
        .get('https://masak-apa-tomorisakura.vercel.app/api/recipe/' + key);
    return DetailresepmakananModel.fromJson(response.data);
  }
}
