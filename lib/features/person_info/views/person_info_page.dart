import 'package:flutter/material.dart';
import 'package:popularpeople/features/person_info/models/person_info.dart';
import 'package:popularpeople/features/person_info/views/profile_pictures_grid.dart';
import 'package:sizer/sizer.dart';

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
