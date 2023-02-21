import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 224, 66),
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter location",
                        icon: Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 29,
                        ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Accra",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Text(
                      "Friday, 20 January",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 255, 224, 66),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rain",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "31°",
                    style: TextStyle(
                      fontSize: 130,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Daily Summary",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Now it seems that +25, in fact +28°",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "It's humid now because of the heaw rain Today.",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "the temperature is felt in the rande from +31°to 27°",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InfoTab(),
                            InfoTab(),
                            InfoTab(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Weekly forecast",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18),
                      ),
                      Image.asset(
                        "assets/arrow.png",
                        height: 40,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ForecastTab(),
                      ForecastTab(),
                      ForecastTab(),
                      ForecastTab(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class InfoTab extends StatelessWidget {
  const InfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(
            "assets/wind.png",
            height: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "4km/h",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 224, 66),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Wind",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 224, 66),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ForecastTab extends StatelessWidget {
  const ForecastTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Column(
        children: [
          Text(
            "31°",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 18,
          ),
          Image.asset(
            "assets/rain.png",
            height: 25,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "21 Jan",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
