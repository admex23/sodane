import 'package:beautiful_hadiya/edecha.dart';
import 'package:flutter/material.dart';

class Data {
  String image;
  String name;
  String description;

  Data({
    required this.image,
    required this.name,
    required this.description,
  });
}

class Culturepage extends StatefulWidget {
  const Culturepage({Key? key}) : super(key: key);

  @override
  State<Culturepage> createState() => _CulturepageState();
}

class _CulturepageState extends State<Culturepage> {
  final List<Data> _photos = [
    Data(
      image: "images/mechefera.jpg",
      name: "መጨፈራ ሓይቅ",
      description: "dggdghh",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ጢእሎ ሓይቅ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/budameda.jpg.jpeg",
      name: "ቡደመዳ ሓይቅ",
      description: """fhdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
          """,
    ),
    Data(
      image: "images/images (5).jpg",
      name: "ቦዮ ሓይቅ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ፍንጩዋ ፏፏቴ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "አደቤ ፏፏቴ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ዋራ ፏፏቴ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ሀብቾ ፏፏቴ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "አገሜና ሆጄ ፏፏቴ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ግሮ ፏፏቴ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ዋሪቄ ፏፏቴ",
      description: "fhfjhjvjk",
    ),

    Data(
      image: "images/haddiya04.jpg",
      name: "ሁነሴ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ባቴና ዋሻዎች",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ኦሊዳ ዋሻ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ሀምበራቾ ዋሻ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ሲቢያ ዋሻ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ሃደዬ ዋሻ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ሾንቆላ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ስንጊዬ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ክላላሞ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/haddiya04.jpg",
      name: "ሃይማኖቶች ",
      description: "fhfjhjvjk",
    ),
    // ... add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culture'),
      ),
      body: GridView.builder(
        itemCount: _photos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EdechaPage(
                    photos: [_photos[index].image],
                    description: _photos[index].description,
                    image: '',
                    name: '',
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(_photos[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  _photos[index].name,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
