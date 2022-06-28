class PersonInfo {


  PersonInfo({
    required this.personId,
    required this.personName,
    required this.personBirthday,
    required this.personBirthPlace,
    required this.personKnownFor,
    required this.personBiography,
    required this.personCredits,
    required this.personProfilePictures,
  });


  String? personId;
  String? personName;
  String? personBirthday;
  String? personBirthPlace;
  String? personKnownFor;
  String? personBiography;
  List? personCredits;
  List? personProfilePictures;




  PersonInfo.fromMap(Map<String,dynamic> personData){
    personId = personData['personId'];
    personName = personData['personName'];
    personBirthday = personData['personBirthday'];
    personBirthPlace = personData['personBirthPlace'];
    personKnownFor = personData['personKnownFor'];
    personBiography = personData['personBiography'];
    personCredits = personData['personCredits'];
    personProfilePictures = personData['personProfilePictures'];
  }

  PersonInfo.initial(){
    personId = null;
    personName = null;
    personBirthday = null;
    personBirthPlace = null;
    personKnownFor = null;
    personBiography = null;
    personCredits = null;
    personProfilePictures = null;
  }

  Map<String,dynamic> toMap(){
    return {
      'personId':personId,
      'personName':personName,
      'personBirthday':personBirthday,
      'personBirthPlace':personBirthPlace,
      'personKnownFor':personKnownFor,
      'personBiography':personBiography,
      'personCredits':personCredits,
      'personProfilePictures':personProfilePictures,
    };
  }

}