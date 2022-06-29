import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';

class ProfilePictureDownloader extends StatelessWidget {
  const ProfilePictureDownloader({
    Key? key,
    required this.profilePictureUrl,
  }) : super(key: key);
  final String profilePictureUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Picture',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                profilePictureUrl,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await GallerySaver.saveImage(profilePictureUrl);
                Get.snackbar('Profile Picture','Saved');
              },
              child: const Text(
                'Download',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
