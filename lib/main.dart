import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: Text("Contest Schedule",style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold,fontSize: 35),)),
                const SizedBox(height: 10,),
                TimelineTile(
                  alignment: TimelineAlign.manual,
                  isFirst: true,
                  lineXY: 0.3,
                  endChild: Container(
                    margin: const EdgeInsets.all(8),
                    child: const Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rpund 0",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Entry",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  startChild: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: const  Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("5 Sept"),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      // color: Colors.amberAccent,
                    ),
                  ),
                ),
                timetile2(
                    date1: "6 Sept",
                    date2: "9 Sept",
                    round: "Round 1",
                    detail: "Submission will start at 4:00 pm"),
                timeline1(
                    date: "10 Sept",
                    result: "Result Round 1",
                    detail: "Results will declare at 12 noon"),
                timetile2(
                    date1: "11 Sept",
                    date2: "13 Sept",
                    round: "Round 2",
                    detail: "Submission will start at 4:00 pm"),
                timeline1(
                    date: "14 Sept",
                    result: "Result Round 1",
                    detail: "Results will declare at 12 noon"),
                timetile2(
                    date1: "15 Sept",
                    date2: "17 Sept",
                    round: "Round 2",
                    detail: "Submission will start at 4:00 pm"),
                timeline1(
                    date: "18 Sept",
                    result: "Result Round 1",
                    detail: "Results will declare at 12 noon"),
                TimelineTile(
                  alignment: TimelineAlign.manual,
                  isLast: true,
                  lineXY: 0.3,
                  endChild: Container(
                    margin: const EdgeInsets.all(8),
                    child: const Padding(
                      padding:EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rpund -1",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Exit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  startChild: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: const  Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("20 Sept"),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class timeline1 extends StatelessWidget {
  String? date, result, detail;
  timeline1({
    this.date,
    this.result,
    this.detail,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.3,
      endChild: Container(
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result!,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                detail!,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      startChild: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(date!),
          ),
          decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          // color: Colors.amberAccent,
        ),
      ),
    );
  }
}

class timetile2 extends StatelessWidget {
  String? date1, date2, round, detail;
  timetile2({
    this.date1,
    this.date2,
    this.round,
    this.detail,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.3,
      endChild: Container(
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                round!,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                detail!,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      startChild: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(date1!),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              // color: Colors.amberAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(date2!),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              // color: Colors.amberAccent,
            ),
          ),
        ],
      ),
    );
  }
}
