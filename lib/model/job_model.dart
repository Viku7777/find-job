import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class JobModel {
  String companyName;
  String jobName;
  String location;
  String logo;
  String jobType; //remote or hybrid
  String joiningType; // Intermediate or waiting
  String jobTiming; // fullday or half
  String jobdetails; // title
  String jobId;
  String payScale;
  List<String> candidaterecruitment;
  List<String> skills;
  JobModel({
    required this.companyName,
    required this.jobName,
    required this.location,
    required this.logo,
    required this.jobType,
    required this.joiningType,
    required this.jobTiming,
    required this.jobdetails,
    required this.jobId,
    required this.payScale,
    required this.candidaterecruitment,
    required this.skills,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyName': companyName,
      'jobName': jobName,
      'location': location,
      'logo': logo,
      'jobType': jobType,
      'joiningType': joiningType,
      'jobTiming': jobTiming,
      'jobdetails': jobdetails,
      'jobId': jobId,
      'payScale': payScale,
      'candidaterecruitment': candidaterecruitment,
      'skills': skills,
    };
  }

  factory JobModel.fromMap(Map<String, dynamic> map) {
    return JobModel(
      companyName: (map["companyName"] ?? '') as String,
      jobName: (map["jobName"] ?? '') as String,
      location: (map["location"] ?? '') as String,
      logo: (map["logo"] ?? '') as String,
      jobType: (map["jobType"] ?? '') as String,
      joiningType: (map["joiningType"] ?? '') as String,
      jobTiming: (map["jobTiming"] ?? '') as String,
      jobdetails: (map["jobdetails"] ?? '') as String,
      jobId: (map["jobId"] ?? '') as String,
      payScale: (map["payScale"] ?? '') as String,
      candidaterecruitment: List<String>.from(
        ((map['candidaterecruitment'] ?? const <String>[]) as List<String>),
      ),
      skills: List<String>.from(
        ((map['skills'] ?? const <String>[]) as List<String>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory JobModel.fromJson(String source) =>
      JobModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<JobModel> allJobs = [
  JobModel(
      companyName: "Webflow",
      jobName: "Web Developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      skills: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      candidaterecruitment: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
  JobModel(
      companyName: "Webflow",
      jobName: "web developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      candidaterecruitment: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      skills: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
  JobModel(
      companyName: "Webflow",
      jobName: "web developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      candidaterecruitment: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      skills: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
  JobModel(
      companyName: "Webflow",
      jobName: "web developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      candidaterecruitment: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      skills: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
  JobModel(
      companyName: "Webflow",
      jobName: "web developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      candidaterecruitment: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      skills: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
  JobModel(
      companyName: "Webflow",
      jobName: "web developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      candidaterecruitment: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      skills: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
  JobModel(
      companyName: "Webflow",
      jobName: "web developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      candidaterecruitment: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      skills: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
  JobModel(
      companyName: "Webflow",
      jobName: "web developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      candidaterecruitment: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      skills: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
  JobModel(
      companyName: "Webflow",
      jobName: "web developer",
      location: "Bandung, Jawa Barat",
      logo:
          "https://cdn.icon-icons.com/icons2/2699/PNG/512/webflow_logo_icon_169218.png",
      jobType: "Remote",
      joiningType: "Intermediate",
      jobTiming: "Full Time",
      jobdetails:
          "We are currently looking for a web developer with 2 years experience, and can operate our product, namely web builder, we will recruit candidates on a full time basis and can work from anywhere, aka WFA",
      jobId: DateTime.now().microsecondsSinceEpoch.toString(),
      candidaterecruitment: [
        "Java script",
        "html, css",
        "Mastering web builder especially webflow",
        "php"
      ],
      skills: [
        "Graduated from S1 majoring in informatics",
        "1 - 2 years of experience with web builder",
        "Mastering web builder especially webflow",
        "Strong communication, design and creative skills",
        "Maximum age of 35 years"
      ],
      payScale: "\$10,000 - \$16,000 a month"),
];
