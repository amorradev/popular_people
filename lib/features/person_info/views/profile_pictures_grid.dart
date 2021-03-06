import 'package:flutter/material.dart';
import 'package:popularpeople/features/person_info/views/profile_picture_downloader.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ProfilePicturesGrid extends StatelessWidget {
  const ProfilePicturesGrid({
    Key? key,
    required this.profilePicturesLinks,
  }) : super(key: key);
  final List profilePicturesLinks;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            profilePicturesLinks.length,
            (index) => Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: SizedBox(
                width: 30.w,
                height: 45.w,
                child: InkWell(
                  onTap: () {
                    Get.to(() => ProfilePictureDownloader(
                          profilePictureUrl: profilePicturesLinks[index]!,
                        ));
                  },
                  child: Image.network(
                    profilePicturesLinks[index]!,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
