class PersonInfo {


  PersonInfo({
    required this.personId,
    required this.personName,
    required this.personBirthday,
    required this.personBirthPlace,
    required this.personKnownFor,
    required this.personBiography,
    required this.personPicture,
  });


  String? personId;
  String? personName;
  String? personBirthday;
  String? personBirthPlace;
  String? personKnownFor;
  String? personBiography;
  String? personPicture;




  PersonInfo.fromMap(Map<String,String> personData){
    personId = personData['personId'];
    personName = personData['personName'];
    personBirthday = personData['personBirthday'];
    personBirthPlace = personData['personBirthPlace'];
    personKnownFor = personData['personKnownFor'];
    personBiography = personData['personBiography'];
    personPicture = personData['personPicture'];
  }

  Map<String,dynamic> toMap(){
    return {
      'personId':personId,
      'personName':personName,
      'personBirthday':personBirthday,
      'personBirthPlace':personBirthPlace,
      'personKnownFor':personKnownFor,
      'personBiography':personBiography,
      'personPicture':personPicture,
    };
  }

}