class PersonBasicInfo {

  PersonBasicInfo({
    required this.personName,
    required this.knownFor,
    required this.pictureUrl,
    required this.personId,
  });

  String? personName;
  String? knownFor;
  String? pictureUrl;
  String? personId;

  PersonBasicInfo.fromMap(Map<String,String> personData){
    personName = personData['personName'];
    knownFor = personData['knownFor'];
    pictureUrl = personData['pictureUrl'];
    personId = personData['personId'];
  }

  Map<String,dynamic> toMap(){
    return {
      'personName':personName,
      'knownFor':knownFor,
      'pictureUrl':pictureUrl,
      'personId':personId,
    };
  }


}
