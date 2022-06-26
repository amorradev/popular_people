class PersonBasicInfo {

  PersonBasicInfo({
    required this.personName,
    required this.knownFor,
    required this.pictureUrl,
  });

  String? personName;
  String? knownFor;
  String? pictureUrl;

  PersonBasicInfo.fromMap(Map<String,String> personData){
    personName = personData['personName'];
    knownFor = personData['knownFor'];
    pictureUrl = personData['pictureUrl'];
  }

  Map<String,dynamic> toMap(){
    return {
      'personName':personName,
      'knownFor':knownFor,
      'pictureUrl':pictureUrl,
    };
  }


}
