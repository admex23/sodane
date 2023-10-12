import 'package:beautiful_hadiya/culturetools2.dart';
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

class Culturetools extends StatefulWidget {
  const Culturetools({Key? key}) : super(key: key);

  @override
  State<Culturetools> createState() => _CulturetoolsState();
}

class _CulturetoolsState extends State<Culturetools>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  final List<Data> _photos = [
    Data(
      image: "images/mechefera.jpg",
      name: "Agira",
      description: "dggdghh",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Boosa",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg.jpeg",
      name: "Bixxira",
      description: """fhdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
          """,
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Buuxxi qashsha",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Buiillaanchcho",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Bixxillele",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Bagado",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "cuphpha",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Duma",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Dibbele",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Fataattana",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Doola",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Gonaa",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Gawujee/mexeqqena",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Gambaabiyya",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "harachcho",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Heeda",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Heexxaqqa",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Haqeeda",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Hookkolo",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Hirfana  ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Jaalo'o",
      description: "dggdghh",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Jijjira",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mecheferajpeg",
      name: "Kado'o",
      description: """fhdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
          """,
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Koraancho",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Koora",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Kalchele",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "losha",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Matarasha",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Meeta",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Mashshala",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Muqureeda",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Maqureeda",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Maqulaamta",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Moyye'e",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Gununcho",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Gaphpha",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Gaasha",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: " Gewwo'o",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Gunalle",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "Gancara",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ochcho  ",
      description: "fhfjhjvjk",
    ),
    // ... add more items as needed
  ];
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.9).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culture Tools'),
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
            onTapDown: _onTapDown,
            onTapUp: _onTapUp,
            onTapCancel: () {
              _animationController.reverse();
            },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage1(
                    photos: [_photos[index].image],
                    description: _photos[index].description,
                    image: '',
                    name: '',
                  ),
                ),
              );
            },
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, Widget? child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
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
        },
      ),
    );
  }
}
