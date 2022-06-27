import 'package:flutter/material.dart';
import 'package:popularpeople/features/person_info/models/person_info.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfilePicturesGrid(
                profilePicturesLinks: profilePictureLinks,
              ),
              MoviesGrid(
                moviesList: moviesList,
              ),
            ],
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
