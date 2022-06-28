import 'package:flutter/material.dart';
import 'package:popularpeople/features/people_list/models/person_basic_info.dart';
import 'package:popularpeople/features/people_list/views/person_basic_info_card.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/people_list_controller.dart';

class PeopleListPage extends StatelessWidget {
  const PeopleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PeopleListController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular People'),
      ),
      body: SafeArea(
        child: RefreshIndicator(
            onRefresh: () => Future.sync(
              // 2
              () => controller.pagingController.refresh(),
            ),
            child: PagedListView.separated(
                // 4
                pagingController: controller.pagingController,
                padding: EdgeInsets.all(5.w),
                separatorBuilder: (context, index) => SizedBox(
                  height: 5.w,
                ),
                builderDelegate: PagedChildBuilderDelegate<PersonBasicInfo>(
                  itemBuilder: (context, personBasicInfo, index) => PersonBasicInfoCard(
                    personBasicInfo: personBasicInfo,
                  ),
                ),
              ),
          ),
      ),
    );
  }
}

