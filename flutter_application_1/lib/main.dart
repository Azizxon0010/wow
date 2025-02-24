import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:async';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("rasm/1.jpg"), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Azizxon(),
                      ));
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "Azizxon",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SHADOWJON(),
                      ));
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "SHADOWJON",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Azizxon extends StatefulWidget {
  const Azizxon({super.key});

  @override
  State<Azizxon> createState() => _AzizxonState();
}

class _AzizxonState extends State<Azizxon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Boshladikmi aka"),
      ),
    );
  }
}

class SHADOWJON extends StatefulWidget {
  const SHADOWJON({super.key});

  @override
  State<SHADOWJON> createState() => _SHADOWJONState();
}

class _SHADOWJONState extends State<SHADOWJON> {
  List<String> nom = [
    "rasm/1jpg",
    "rasm/1jpg",
    "rasm/1jpg",
    "rasm/1jpg",
    "rasm/1jpg",
    "rasm/1jpg",
    "rasm/1jpg",
    "rasm/1jpg",
  ];
  final TextEditingController _controller = TextEditingController();
  int? _number;

  Color _containerColor = Colors.white; // Default color
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: CarouselSlider(
              items: nom
                  .map((e) => Container(
                        width: 200, // Set the width to 200
                        height: 200, // Set the height to 200
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(e), fit: BoxFit.cover)),
                      ))
                  .toList(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 2.0,
                viewportFraction: 0.8,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: 'Enter a number (1-3)'),
                  onChanged: (value) {
                    setState(() {
                      _number = int.tryParse(value);

                      // Change color based on number
                      if (_number == 1) {
                        _containerColor = Colors.red;
                      } else if (_number == 2) {
                        _containerColor = Colors.green;
                      } else if (_number == 3) {
                        _containerColor = Colors.blue;
                      } else {
                        _containerColor =
                            Colors.white; // Default color if not 1, 2, or 3
                      }
                    });
                  },
                ),
                SizedBox(height: 20),
                Container(
                  width: 100,
                  height: 100,
                  color:
                      _containerColor, // The color will change based on user input
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KeyingiSahifa(),
                    ));
              },
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    "keyingi sahifa",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: CarouselSlider(
              items: nom
                  .map((e) => Container(
                        width: 200, // Set the width to 200
                        height: 200, // Set the height to 200
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(e), fit: BoxFit.cover)),
                      ))
                  .toList(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 2.0,
                viewportFraction: 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KeyingiSahifa extends StatefulWidget {
  const KeyingiSahifa({super.key});

  @override
  State<KeyingiSahifa> createState() => _KeyingiSahifaState();
}

class _KeyingiSahifaState extends State<KeyingiSahifa> {
  int _clickCount = 0;
  Timer? _timer;

  // Tugma bosilganda chaqiriladigan funksiya
  void _onButtonPressed() {
    // Agar hozirda sanash pasayishda bo'lmasa (ya'ni _timer ishlamayotgan bo'lsa)
    if (_timer == null) {
      if (_clickCount < 50) {
        setState(() {
          _clickCount++;
        });
        // Agar son 50 ga yetgan bo'lsa, avtomatik sanashni boshlaymiz
        if (_clickCount == 50) {
          _startCountdown();
        }
      }
    }
  }

  // Avtomatik sanashni boshlash: har sekundda son kamayadi
  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_clickCount > 0) {
          _clickCount--;
        } else {
          timer.cancel();
          _timer = null; // Timer tugadi, qayta tugmani bosish uchun tayyor
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$_clickCount",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _onButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
