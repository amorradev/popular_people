import 'package:flutter/material.dart';
import 'package:popularpeople/features/people_list/models/person_basic_info.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../../person_info/controllers/person_info_controller.dart';
import '../../person_info/views/person_info_page.dart';

class PersonBasicInfoCard extends StatelessWidget {
  const PersonBasicInfoCard({
    Key? key,
    required this.personBasicInfo,
  }) : super(key: key);
  final PersonBasicInfo personBasicInfo;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PersonInfoController());
    return InkWell(
      onTap: (){
        controller.fetchPersonInfo(personBasicInfo.personId!);
        Get.to(() => const PersonInfoPage());
      },
      child: Padding(
        padding: EdgeInsets.all(.5.h,),
        child: Container(
          height: 10.h,
          width: 90.w,
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(2.w)
          ),
          child: Padding(
            padding: EdgeInsets.all(1.h,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 8.h,
                  width: 8.h,
                  child: Image.network(
                    personBasicInfo.pictureUrl!,
                  ),
                ),
                SizedBox(width: 1.h,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        personBasicInfo.personName!,
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        personBasicInfo.knownFor!,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
