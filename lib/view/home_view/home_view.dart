import 'package:find_jobs/app_config.dart';
import 'package:find_jobs/model/job_model.dart';
import 'package:find_jobs/view/bottombar_view/component.dart';
import 'package:find_jobs/view/home_view/job_details_view.dart';
import 'package:find_jobs/view/search_view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppConfig.appName)),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          children: [
            20.h.verticalSpace,
            Text(
              "Welcome",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
            Text(
              "Find your dream job",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
            10.h.verticalSpace,
            TextField(
              readOnly: true,
              onTap: () {
                searchJobs = [];
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => SearchView(
                            isViewAll: true,
                          )),
                );
              },
              decoration: InputDecoration(
                  hintText: "Search Jobs",
                  hintStyle: const TextStyle(
                      color: Color(
                    0xffBDBDBD,
                  )),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconConstraints: const BoxConstraints(minWidth: 60),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        20.r,
                      ),
                      borderSide: const BorderSide(color: Colors.transparent))),
            ),
            10.h.verticalSpace,
            Row(
              children: List.generate(
                  2,
                  (index) => Expanded(
                        child: InkWell(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    JobDetailedView(job: allJobs.first)),
                          ),
                          child: Container(
                            height: 110.h,
                            margin: EdgeInsets.all(8.sp),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.network(allJobs.first.logo,
                                        height: 20),
                                    10.horizontalSpace,
                                    Text(
                                      allJobs.first.companyName,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                Text(
                                  allJobs.first.jobName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Text(
                                  "${allJobs.first.location} - ${allJobs.first.jobTiming}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10),
                                  maxLines: 1,
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
            ),
            10.h.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Latest Jobs",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                ),
                TextButton(
                    onPressed: () {
                      searchJobs = allJobs;
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SearchView()),
                      );
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          color: Color(0xffFF1E56),
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ))
              ],
            ),
            10.h.verticalSpace,
            ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  Showjobtile(job: allJobs.first, islatestJob: true),
              separatorBuilder: (context, index) => SizedBox(height: 15.h),
            )
          ],
        ),
      ),
    );
  }
}
