import 'package:flutter_test/flutter_test.dart';
import 'package:popularpeople/features/people_list/services/helper_functions.dart';
import 'package:popularpeople/features/person_info/services/helper_functions.dart';

void main(){

  group('people_list helper functions test', () {

    test('when getBasicProfilePictureUrl() is called it returns the right basic profile picture url',(){
      var rightUrl = getBasicProfilePictureUrl('/q2gRVmDreweuX7FeGppw6MJE1bu.jpg');
      expect(rightUrl, 'https://www.themoviedb.org/t/p/w470_and_h470_face/q2gRVmDreweuX7FeGppw6MJE1bu.jpg');
    });

    test('when getBasicKnownForString() is called it returns the a string of known for credits',(){
      var knownForString = getBasicKnownForString([{'original_title':'The Batman'},{'original_title':'Joker'},{'original_name':'Friends'}]);
      expect(knownForString, 'The Batman, Joker, Friends, ');
    });

  });

  group('person_info helper functions test', () {

    test('when getProfilePictureFullUrl() is called it returns the right full profile picture url',(){
      var rightUrl = getProfilePictureFullUrl('/q2gRVmDreweuX7FeGppw6MJE1bu.jpg');
      expect(rightUrl, 'https://www.themoviedb.org/t/p/original/q2gRVmDreweuX7FeGppw6MJE1bu.jpg');
    });

    test('when getMoviePosterUrl() is called it returns the right basic movie poster url',(){
      var rightUrl = getMoviePosterUrl('/q2gRVmDreweuX7FeGppw6MJE1bu.jpg');
      expect(rightUrl, 'https://www.themoviedb.org/t/p/w1280/q2gRVmDreweuX7FeGppw6MJE1bu.jpg');
    });

    test('when getCreditsInfo() is called it returns a map of credits info',(){
      var knownForString = getCreditsInfo({'original_title':'The Batman','poster_path':'/fac16491945367.5e3ebd0d19991.jpg'});
      expect(knownForString, {'name':'The Batman','poster':'https://www.themoviedb.org/t/p/w1280/fac16491945367.5e3ebd0d19991.jpg'});
    });

  });




}