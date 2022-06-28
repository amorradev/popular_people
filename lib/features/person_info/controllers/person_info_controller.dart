import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../models/person_info.dart';
import '../services/person_info_fetcher.dart';

class PersonInfoController extends GetxController {
  static final Dio _dio = Dio();
  final PersonInfoFetcher personInfoFetcher = PersonInfoFetcher(dio: _dio);

  var isLoading = false.obs;
  var personInfo = PersonInfo.initial()
      .obs;

  Future<void> fetchPersonInfo(String personId) async {
    isLoading.value = true;
    personInfo.value = (await personInfoFetcher.fetchPersonInfo(personId: personId))!;
    isLoading.value = false;
  }
}
