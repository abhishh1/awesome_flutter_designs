import 'package:flutter/material.dart';
import 'package:ig_posts/features/1.flutter_frost_glass.view.dart';
import 'package:ig_posts/features/5.flutter_swiggy_button.dart';

class FlutterProfileView extends StatelessWidget {
  const FlutterProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [bgColor.withOpacity(0.2), bgColorFaint],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: bgColorFaint,
                  child:
                      Icon(Icons.arrow_back_ios, size: 15, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(width: 400, height: 450),
                Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          bgColorFaint,
                          bgColor.withOpacity(0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 70),
                      Text("Abhishvek", style: boldText(fSize: 30)),
                      Text("🌀 Flutter developer", style: regulerText),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("97", style: boldText()),
                              Text("Score", style: regulerText),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("109", style: boldText()),
                              Text("Projects", style: regulerText),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("5.0", style: boldText()),
                              Text("Rating", style: regulerText),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        CircleAvatar(backgroundColor: bgColor, radius: 80),
                        CircleAvatar(
                            backgroundImage: AssetImage("assets/dp.png"),
                            radius: 72)
                      ],
                    )),
                Positioned(
                    top: 130,
                    child: Chip(
                        backgroundColor: Colors.deepOrangeAccent,
                        label: Text("Available", style: boldText(fSize: 12))))
              ],
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12)),
              child:
                  Center(child: Text("Contact developer", style: regulerText)),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 0.4),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text("Visit profile", style: regulerText)),
            )
          ],
        ),
      ),
    );
  }
}
