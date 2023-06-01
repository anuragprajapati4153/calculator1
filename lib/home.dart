import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var num1 = 0, num2 = 0, sum = 0;
  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      if (num1 > num2) {
        sum = num1 - num2;
      } else {
        sum = num2 - num1;
      }
    });
  }

  void doMlt() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      sum = num1 ~/ num2;
    });
  }

  void reset() {
    setState(() {
      t1.text = "";
      t2.text = "";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator1")),
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(children: [
          Text(
            "outPut: $sum",
            style: const TextStyle(fontSize: 32, color: Colors.blueAccent),
          ),
          TextField(
            decoration:
                const InputDecoration(hintText: "Enter your first number"),
            controller: t1,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration:
                const InputDecoration(hintText: "Enter your second number"),
            controller: t2,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: doAdd,
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: doSub,
                child: const Text(
                  "-",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: doMlt,
                child: const Text(
                  "*",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: doDiv,
                child: const Text(
                  "/",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: reset,
                child: const Text(
                  "reset",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              )
            ],
          )
        ]),
      )),
    );
  }
}
