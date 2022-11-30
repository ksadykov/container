import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            NewWidget(
              icon: Icons.mail,
              textIcon: 'Current Weight',
              text: '--- kgs',
            ),
            NewWidget(
                icon: Icons.ondemand_video,
                textIcon: 'Target Weight',
                text: '--- kgs'),
            NewWidget(
                icon: Icons.menu,
                textIcon: 'Height            ',
                text: '--- cms'),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.textIcon,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final String textIcon;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22.5),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 15.5),
              Text(textIcon),
              SizedBox(
                width: 90,
              ),
              Expanded(
                  child: Container(
                width: 83,
                height: 48,
                child: Center(
                  child: Text(text),
                ),
              )),
            ],
          ),
        ),
        width: 315,
        height: 48,
      ),
    );
  }
}
