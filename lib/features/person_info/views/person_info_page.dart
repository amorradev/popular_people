import 'package:flutter/material.dart';
import 'package:popularpeople/features/person_info/models/person_info.dart';
import 'package:popularpeople/features/person_info/views/info_card.dart';
import 'package:popularpeople/features/person_info/views/profile_pictures_grid.dart';
import 'package:sizer/sizer.dart';
import 'movies_grid.dart';

class PersonInfoPage extends StatelessWidget {
  const PersonInfoPage({
    Key? key,
    //required this.personInfo,
  }) : super(key: key);

  // final PersonInfo personInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfilePicturesGrid(
                  profilePicturesLinks: profilePictureLinks,
                ),
                PersonInfoCard(personInfo: personInfo),
                MoviesGrid(
                  moviesList: moviesList,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String?> profilePictureLinks = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2gHiYPXOq7RJLs4vTz5fUmSg8cd.jpg',
  'https://www.themoviedb.org/t/p/original/3nFpFd3Rt5pa9xkbF7MhwzLGbw8.jpg',
  'https://www.themoviedb.org/t/p/original/tmU9jtSs6c4ySC5eiad3aXXADan.jpg'
];

List<Map<String, String>> moviesList = [
  {
    'name': 'Once Upon a Time… in Hollywood',
    'poster': 'https://www.themoviedb.org/t/p/w1280/8j58iEBw9pOXFD2L0nt0ZXeHviB.jpg',
  },
  {
    'name': "The Dead Don't Die",
    'poster': 'https://www.themoviedb.org/t/p/w1280/fgGzTEoNxptCRtEOpOPvIEdlxAq.jpg',
  },
  {
    'name': 'Aliens in the Attic',
    'poster': 'https://www.themoviedb.org/t/p/w1280/gjDfPcKcxdJlJkK6pgHrwDfSG3O.jpg',
  },
  {
    'name': 'Dude',
    'poster': 'https://www.themoviedb.org/t/p/w1280/vh4K737r0ZjrioIjHcs7ktV8RFO.jpg',
  },
];

PersonInfo personInfo = PersonInfo(
  personId: '86654',
  personName: "Austin Butler",
  personBirthday: "1991-08-17",
  personBirthPlace: "Anaheim, California, USA",
  personKnownFor: "Acting",
  personBiography:
      "Austin Robert Butler (born August 17, 1991) is an American actor. He is known for his roles as James \"Wilke\" Wilkerson in the television series Switched at Birth, Jordan Gallagher on Ruby & the Rockits, Sebastian Kydd in The Carrie Diaries, Tex Watson in Once Upon a Time in Hollywood, and Wil Ohmsford in The Shannara Chronicles. In 2022, he will appear as Elvis Presley in the film Elvis.",
);
