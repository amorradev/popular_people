String getProfilePictureFullUrl(String picturePath) {
  return 'https://www.themoviedb.org/t/p/original$picturePath';
}

String getMoviePosterUrl(String posterPath) {
  return 'https://www.themoviedb.org/t/p/w1280$posterPath';
}

Map getCreditsInfo(Map credit) {
  if (credit['original_title'] == null) {
    return {
      'name': credit['original_name'],
      'poster': credit['poster_path'] != null
          ? getMoviePosterUrl(credit['poster_path'])
          : 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/fac16491945367.5e3ebd0d19991.jpg',
    };
  }
  return {
    'name': credit['original_title'],
    'poster': credit['poster_path'] != null
        ? getMoviePosterUrl(credit['poster_path'])
        : 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/fac16491945367.5e3ebd0d19991.jpg',
  };
}
