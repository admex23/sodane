import 'package:flutter/material.dart';

class Data {
  String image;
  String name;

  Data({required this.image, required this.name});
}

class DetailPage1 extends StatelessWidget {
  final String description;
  final List<String> photos;

  const DetailPage1(
      {required this.description,
      required this.photos,
      Key? key,
      required String image,
      required String name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: photos.length,
              itemBuilder: (context, index) {
                return Image.asset(photos[index]);
              },
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
