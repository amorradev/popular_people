import 'package:dio/dio.dart';
import '../models/person_info.dart';
import 'helper_functions.dart';

class PersonInfoFetcher {
  PersonInfoFetcher({required this.dio});

  final Dio dio;

  Future<PersonInfo?> fetchPersonInfo({required String personId}) async {
    final url = 'https://api.themoviedb.org/3/person/$personId?api_key=38a290f07924ab4f48bf2d2a2f89a44f';
    Response response;

    try {
      response = await dio.get<dynamic>(
        url,
      );

      final returnedData = response.data as Map;
      final personProfilePictures = await fetchPersonProfilePicturesUrls(personId: personId);
      final personCredits = await fetchPersonCredits(personId: personId);
      PersonInfo personInfo = PersonInfo(
        personId: personId,
        personName: returnedData['name'],
        personBirthday: returnedData['birthday'],
        personBirthPlace: returnedData['place_of_birth'],
        personKnownFor: returnedData['known_for_department'],
        personBiography: returnedData['biography'],
        personCredits: personCredits,
        personProfilePictures: personProfilePictures,
      );

      return personInfo;

    } catch (e) {

      return null;

    }
  }

  Future<List?> fetchPersonProfilePicturesUrls({required String personId}) async {
    final url = 'https://api.themoviedb.org/3/person/$personId/images?api_key=38a290f07924ab4f48bf2d2a2f89a44f';
    Response response;

    try {
      response = await dio.get<dynamic>(
        url,
      );
      final returnedData = response.data as Map;
      final profiles = returnedData['profiles'] as List;
      final profilePicturesUrls = [];
      for (var element in profiles) {
        profilePicturesUrls.add(getProfilePictureFullUrl(element['file_path']));
      }
      return profilePicturesUrls;
    } catch (e) {
      return [];
    }
  }


  Future<List> fetchPersonCredits({required String personId}) async {
    final url = 'https://api.themoviedb.org/3/person/$personId/combined_credits?api_key=38a290f07924ab4f48bf2d2a2f89a44f';
    Response response;

    try {
      response = await dio.get<dynamic>(
        url,
      );
      final returnedData = response.data as Map;
      final credits = returnedData['cast'] as List;

      var creditsInfo = [];
      for (var element in credits) {
        creditsInfo.add(getCreditsInfo(element));
      }
      return creditsInfo;
    } catch (e) {
      return [];
    }
  }

}
