// ignore_for_file: avoid_single_cascade_in_expression_statements, must_be_immutable

import 'package:another_flushbar/flushbar.dart';
import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:find_jobs/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplyJobView extends StatefulWidget {
  String jobid;
  ApplyJobView({super.key, required this.jobid});

  @override
  State<ApplyJobView> createState() => _ApplyJobViewState();
}

class _ApplyJobViewState extends State<ApplyJobView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController languagesController = TextEditingController();
  TextEditingController workexperienceController = TextEditingController();
  TextEditingController instaControllerController = TextEditingController();
  TextEditingController interestscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Apply Jobs")),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 35.w),
          child: InkWell(
            onTap: () async {
              if (nameController.text.isEmpty ||
                  addressController.text.isEmpty ||
                  mobileController.text.isEmpty ||
                  educationController.text.isEmpty ||
                  languagesController.text.isEmpty ||
                  workexperienceController.text.isEmpty ||
                  interestscontroller.text.isEmpty) {
                Flushbar(
                  margin: const EdgeInsets.all(8),
                  flushbarPosition: FlushbarPosition.TOP,
                  borderRadius: BorderRadius.circular(8),
                  flushbarStyle: FlushbarStyle.FLOATING,
                  message: "Please fill all required fields",
                  icon: const Icon(Icons.info_outline,
                      size: 28.0, color: Colors.red),
                  duration: const Duration(seconds: 3),
                  leftBarIndicatorColor: Colors.red,
                )..show(context);
              } else {
                await EasyLauncher.url(
                    url:
                        "https://wa.me/${AppConfig.whatsappNo}?text=Hello%20i%20just%20apply%20for%20job%20title,%20%0AName%20:%20${nameController.text}%0AAddress%20:%20${addressController.text}%0AMobile%20:%20${mobileController.text}%0AEducation%20:%20${educationController.text}%0ALanguages%20:%20${languagesController.text}%0AWork%20Experience%20:%20${workexperienceController.text}%0AInterests%20:%20${interestscontroller.text}%0ASocial%20media%20:%20${instaControllerController.text}%0Ajob%20id%20:%20${widget.jobid}%0A");

                //
              }
            },
            child: Container(
              height: 45.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xffFFAC41),
                  borderRadius: BorderRadius.circular(10.r)),
              child: const Text(
                "Apply Now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          children: [
            customTextfiled("Name", nameController),
            customTextfiled("Address", addressController),
            customTextfiled("Mobile No.", mobileController),
            customTextfiled("Education", educationController),
            customTextfiled("Languages", languagesController),
            customTextfiled("Work Experience", workexperienceController),
            customTextfiled("Interests", interestscontroller),
            customTextfiled("Insta Or Fb Profile", instaControllerController),
            20.h.verticalSpace,
          ],
        ));
  }

  customTextfiled(String title, TextEditingController controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.h.verticalSpace,
          Text(
            title,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
          ),
          5.h.verticalSpace,
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: const BorderSide(color: Colors.transparent))),
          ),
        ],
      );
}
