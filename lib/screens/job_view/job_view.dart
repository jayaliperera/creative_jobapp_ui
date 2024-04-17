import 'package:creative_job_app_ui/models/job_model.dart';
import 'package:flutter/material.dart';

class JobViewPage extends StatefulWidget {
  const JobViewPage({super.key, required this.model});

  final JobModel model;

  @override
  State<JobViewPage> createState() => _JobViewPageState();
}

class _JobViewPageState extends State<JobViewPage> {
  final tabButtons = ["Description", "Company", "Reviews"];
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  width: size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://img.freepik.com/free-vector/colleagues-working-together-project_74855-6308.jpg"))),
                  child: Stack(
                    children: [
                      SafeArea(
                          child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.model.title,
                          style: const TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              widget.model.salary,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                widget.model.type,
                                style: TextStyle(color: Colors.grey.shade300),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(widget.model.logo),
                              radius: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.model.companyName,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  widget.model.city,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              widget.model.time,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: tabButtons.map((e) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            tabIndex = tabButtons.indexOf(e);
                          });
                        },
                        child: Chip(
                          backgroundColor: tabIndex == tabButtons.indexOf(e)
                              ? Colors.black
                              : Colors.white,
                          label: Text(
                            e,
                            style: TextStyle(
                                color: tabIndex == tabButtons.indexOf(e)
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ));
                  }).toList(),
                ),
                tabIndex == 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          height: 170,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                              "Are you interested in improving your job outlook and increasing your salary? How can you demonstrate that you are the most qualified candidate for a Senior UX Designer position? Of course continuing to gain experience working as a Senior UX Designer may be your best qualification, but there are other ways you can also develop your skills, like continuing education or volunteer opportunities."),
                        ),
                      )
                    : tabIndex == 1
                        ? const Text("Company")
                        : const Text("Reviews")
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 75,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: size.width * 0.6,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              "Apply Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
