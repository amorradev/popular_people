import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../models/person_info.dart';

class PersonInfoCard extends StatelessWidget {
  const PersonInfoCard({
    Key? key,
    required this.personInfo,
  }) : super(key: key);
  final PersonInfo personInfo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonName(personName: personInfo.personName!,),
          const InfoTitle(title: 'Known For',),
          InfoBody(body: personInfo.personKnownFor!,),
          const InfoTitle(title: 'Birthday',),
          InfoBody(body: personInfo.personBirthday!,),
          const InfoTitle(title: 'Place of Birth',),
          InfoBody(body: personInfo.personBirthPlace!,),
          const InfoTitle(title: 'Biography',),
          InfoBody(body: personInfo.personBiography!,),
          const InfoTitle(title: 'Known For',),
        ],
      ),
    );
  }
}

class PersonName extends StatelessWidget {
  const PersonName({Key? key, required this.personName,}) : super(key: key);
  final String personName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:5.w),
      child: Text(
        personName,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}

class InfoTitle extends StatelessWidget {
  const InfoTitle({Key? key, required this.title,}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:1.w),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}

class InfoBody extends StatelessWidget {
  const InfoBody({Key? key, required this.body,}) : super(key: key);
  final String body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:2.5.w),
      child: Text(
        body,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

