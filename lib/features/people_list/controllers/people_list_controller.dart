import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:popularpeople/features/people_list/models/person_basic_info.dart';
import 'package:popularpeople/features/people_list/services/people_list_fetcher.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PeopleListController extends GetxController{

  static final Dio _dio = Dio();
  final PeopleListFetcher peopleListFetcher = PeopleListFetcher(dio: _dio);


  Future<void> fetchPeople(int pageNumber) async {
    var newPersonBasicInfoList = await peopleListFetcher.fetchPeople(pageNumber: pageNumber);
    final nextPageKey = pageNumber + 1;
    pagingController.appendPage(newPersonBasicInfoList, nextPageKey);
  }


  final pagingController = PagingController<int, PersonBasicInfo>(
    firstPageKey: 1,
  );

  @override
  void onInit() {
    pagingController.addPageRequestListener((pageKey) {
      fetchPeople(pageKey);
    });
    super.onInit();
  }

  @override
  void onClose() {
    pagingController.dispose();
    super.onClose();
  }

}