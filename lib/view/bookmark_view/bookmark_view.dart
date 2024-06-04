import 'package:find_jobs/app_config.dart';
import 'package:find_jobs/model/job_model.dart';
import 'package:find_jobs/view/bottombar_view/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookmarkView extends StatefulWidget {
  const BookmarkView({super.key});

  @override
  State<BookmarkView> createState() => _BookmarkViewState();
}

class _BookmarkViewState extends State<BookmarkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.black, title: Text(AppConfig.appName)),
      body: ListView.separated(
        padding: EdgeInsets.all(10.sp),
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: Colors.black)),
            child: Showjobtile(job: allJobs.first)),
        separatorBuilder: (context, index) => SizedBox(height: 15.h),
      ),
    );
  }
}
