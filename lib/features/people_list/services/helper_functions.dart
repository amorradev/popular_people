
String getBasicProfilePictureUrl(String profilePath){
  return 'https://www.themoviedb.org/t/p/w470_and_h470_face$profilePath';
}

String getBasicKnownForString(List movies){
  String knownFor = '';
  for (int i = 0 ; i < movies.length ; i++){
    if (movies[i]['original_title'] != null){
      knownFor = '${knownFor + movies[i]['original_title']}, ';
    }
    if (movies[i]['original_name'] != null){
      knownFor = '${knownFor + movies[i]['original_name']}, ';
    }
  }
  return knownFor;
}