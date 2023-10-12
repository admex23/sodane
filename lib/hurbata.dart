import 'package:flutter/material.dart';

class Hurbata extends StatefulWidget {
  const Hurbata({super.key});

  @override
  State<Hurbata> createState() => _HurbataState();
}

class _HurbataState extends State<Hurbata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' The cultures food'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/photo_2022-08-29_15-13-06.jpg'),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: Center(
                child: const Text(
                  'worroni niiloobbano bikkina qaannanalle',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
