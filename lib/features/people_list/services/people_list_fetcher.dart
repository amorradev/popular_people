import 'package:dio/dio.dart';
import 'package:popularpeople/features/people_list/models/person_basic_info.dart';

import 'helper_functions.dart';

class PeopleListFetcher {
  PeopleListFetcher({required this.dio});

  final Dio dio;

  Future<List<PersonBasicInfo>> fetchPeople({required int pageNumber}) async {
    const url = 'https://api.themoviedb.org/3/person/popular?api_key=38a290f07924ab4f48bf2d2a2f89a44f';
    final queryParameters = {'page': pageNumber};
    Response response;

    try {
      response = await dio.get<dynamic>(
        url,
        queryParameters: queryParameters,
      );
      final returnedData = response.data as Map;
      final peopleList = returnedData['results'] as List;
      final personalBasicInfoList = List.generate(peopleList.length, (index) {

        return PersonBasicInfo(
          personId: '${peopleList[index]["id"]}',
          personName: peopleList[index]["name"],
          knownFor: getBasicKnownForString(peopleList[index]["known_for"]),
          pictureUrl: getBasicProfilePictureUrl(peopleList[index]["profile_path"]),
        );
      });
      return personalBasicInfoList;
    } catch (e) {
      return [];
    }
  }
}
