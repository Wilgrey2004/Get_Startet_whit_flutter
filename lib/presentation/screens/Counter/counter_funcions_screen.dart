import 'package:flutter/material.dart';

class CounterFuncionsScreen extends StatefulWidget {
  const CounterFuncionsScreen({super.key});

  @override
  State<CounterFuncionsScreen> createState() => _CounterFuncionsScreenState();
}

class _CounterFuncionsScreenState extends State<CounterFuncionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter funcions"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              int resetCounter = 0;
              clickCounter = resetCounter;
              setState(() {});
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "Click${clickCounter <= 1 ? "" : "s"}",
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.plus_one,
            onPresse: () {
              setState(() {
                int newClickCounter = clickCounter + 1;
                clickCounter = newClickCounter;
              });
            },
          ),
          SizedBox(height: 16),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPresse: () {
              setState(() {
                if (clickCounter > 0) {
                  int newClickCounter = clickCounter - 1;
                  clickCounter = newClickCounter;
                }
                return;
              });
            },
          ),
          SizedBox(height: 16),
          CustomButton(
            icon: Icons.refresh_outlined,
            onPresse: () {
              int resetCounter = 0;
              clickCounter = resetCounter;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPresse;
  const CustomButton({super.key, required this.icon, this.onPresse});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      backgroundColor: Colors.deepOrange,
      elevation: 10,
      shape: const StadiumBorder(),
      onPressed: onPresse,
      child: Icon(icon),
    );
  }
}
