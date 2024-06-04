// ignore_for_file: must_be_immutable

import 'package:find_jobs/app_config.dart';
import 'package:find_jobs/model/job_model.dart';
import 'package:find_jobs/view/bottombar_view/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<JobModel> searchJobs = [];

class SearchView extends StatefulWidget {
  bool isViewAll;
  SearchView({super.key, this.isViewAll = false});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(widget.isViewAll ? "Search Jobs" : "All Jobs")),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        children: [
          widget.isViewAll
              ? Column(
                  children: [
                    20.h.verticalSpace,
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Search Jobs",
                          hintStyle: const TextStyle(
                              color: Color(
                            0xffBDBDBD,
                          )),
                          prefixIcon: const Icon(Icons.search),
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 60),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                              borderSide:
                                  const BorderSide(color: Colors.transparent))),
                    ),
                    10.h.verticalSpace,
                    Container(
                      height: 45.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFAC41),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: const Text(
                        "Search Job",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                    10.h.verticalSpace,
                    const Divider(),
                  ],
                )
              : const SizedBox(),
          ListView.separated(
            padding: EdgeInsets.all(10.sp),
            itemCount: searchJobs.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: Colors.black)),
                child: Showjobtile(job: searchJobs[index])),
            separatorBuilder: (context, index) => SizedBox(height: 15.h),
          ),
        ],
      ),
    );
  }
}
