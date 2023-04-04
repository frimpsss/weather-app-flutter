import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 66, 198, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: InputField()),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/main')},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "Search",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 18),
                        ),
                      ),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => {debugPrint(value)},
      decoration: const InputDecoration(
        hintText: "Enter the city",
        border: InputBorder.none,
      ),
    );
  }
}
