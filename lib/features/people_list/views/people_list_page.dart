import 'package:flutter/material.dart';
import 'package:popularpeople/features/people_list/models/person_basic_info.dart';
import 'package:popularpeople/features/people_list/views/person_basic_info_card.dart';

class PeopleListPage extends StatelessWidget {
  const PeopleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              PersonBasicInfoCard(
                personBasicInfo: personX,
              ),
              PersonBasicInfoCard(
                personBasicInfo: personX,
              ),
              PersonBasicInfoCard(
                personBasicInfo: personX,
              ),
              PersonBasicInfoCard(
                personBasicInfo: personX,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

PersonBasicInfo personX = PersonBasicInfo(
  personName: 'Austin Butler',
  knownFor: "Once Upon a Time… in Hollywood, Arrow, The Dead Don't Die, Once Upon a Time… in Hollywood, Arrow, The Dead Don't Die",
  pictureUrl: 'https://www.themoviedb.org/t/p/w470_and_h470_face/2gHiYPXOq7RJLs4vTz5fUmSg8cd.jpg',
);
