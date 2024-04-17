import 'package:creative_job_app_ui/models/job_model.dart';

class GetData {
  final instaLogo =
      "https://freelogopng.com/images/all_img/1683191308instagram-logo-black-and-white.png";

  final uberLogo =
      "https://freelogopng.com/images/all_img/1659761297uber-icon.png";

  final tiktokLogo =
      "https://static.vecteezy.com/system/resources/previews/023/986/939/original/tiktok-logo-tiktok-logo-transparent-tiktok-icon-transparent-free-free-png.png";

  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
          title: "Senior UX Designer",
          salary: "LKR 80 000/month",
          companyName: "Uber",
          logo: uberLogo,
          city: "Colombo",
          time: "27 Days Left"),
      JobModel(
          title: "Senior UI Designer",
          salary: "LKR 90 000/month",
          companyName: "Instagram",
          logo: instaLogo,
          city: "Kandy",
          time: "20 Days Left"),
      JobModel(
          title: "Senior Mobile Developer",
          salary: "LKR 100 000/month",
          companyName: "TikTok",
          logo: tiktokLogo,
          city: "Jaffna",
          time: "18 Days Left"),
      JobModel(
          title: "Senior Web Developer",
          salary: "LKR 110 000/month",
          companyName: "Instagram",
          logo: instaLogo,
          city: "Matara",
          time: "12 Days Left")
    ];

    return jobs;
  }
}
