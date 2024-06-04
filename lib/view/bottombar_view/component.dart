// ignore_for_file: must_be_immutable

import 'package:find_jobs/model/job_model.dart';
import 'package:find_jobs/view/home_view/job_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Showjobtile extends StatelessWidget {
  JobModel job;
  bool islatestJob;
  Showjobtile({super.key, required this.job, this.islatestJob = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (islatestJob) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => JobDetailedView(job: job),
          ));
        }
      },
      child: Container(
        height: 180,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Row(
                  children: [
                    Image.network(job.logo, height: 50),
                    10.h.horizontalSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            job.companyName,
                            style: const TextStyle(
                                color: Color(0xffFF1E56),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            job.jobName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            job.payScale,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff888888),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Row(
                children: [
                  job.jobType,
                  job.joiningType,
                  job.jobTiming,
                ]
                    .map((e) => Expanded(
                          child: Container(
                            height: 25.h,
                            margin: EdgeInsets.all(2.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Colors.grey.shade300),
                            alignment: Alignment.center,
                            child: Text(
                              e,
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
