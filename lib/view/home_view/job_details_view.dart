// ignore_for_file: must_be_immutable

import 'package:find_jobs/model/job_model.dart';
import 'package:find_jobs/view/bottombar_view/component.dart';
import 'package:find_jobs/view/home_view/apply_job_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobDetailedView extends StatefulWidget {
  JobModel job;
  JobDetailedView({super.key, required this.job});

  @override
  State<JobDetailedView> createState() => _ApplyJobViewState();
}

class _ApplyJobViewState extends State<JobDetailedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Job Details")),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 35.w),
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ApplyJobView(jobid: widget.job.jobId))),
          child: Container(
            height: 45.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffFFAC41),
                borderRadius: BorderRadius.circular(10.r)),
            child: const Text(
              "Apply Job",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          20.h.verticalSpace,
          Showjobtile(job: widget.job),
          10.h.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Job Description",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                ),
                10.h.verticalSpace,
                Text(
                  widget.job.jobdetails,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
                10.h.verticalSpace,
                Text(
                  "A must have skill",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                ),
                10.h.verticalSpace,
                ...widget.job.skills.map((e) => Row(
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black54),
                        ),
                        5.w.horizontalSpace,
                        Text(
                          e,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )),
                10.h.verticalSpace,
                Text(
                  "Required Candidate profile",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                ),
                10.h.verticalSpace,
                ...widget.job.candidaterecruitment.map((e) => Row(
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black54),
                        ),
                        5.w.horizontalSpace,
                        Text(
                          e,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )),
                10.h.verticalSpace,
                Text(
                  "Pay Scale",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                ),
                10.h.verticalSpace,
                Text(
                  widget.job.payScale,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
                10.h.verticalSpace,
                Text(
                  "Location",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                ),
                10.h.verticalSpace,
                Text(
                  widget.job.location,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
                30.h.verticalSpace,
              ],
            ),
          )
        ],
      ),
    );
  }
}
