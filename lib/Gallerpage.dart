import 'package:beautiful_hadiya/models.dart';
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

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
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
      description:
          """በደመዳ ሐይቅ ሲራሮ ባዳዋቾ ወረዳ በስርቶ ገፈርሶ ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በምሥራቃዊ ሰሜን ምሥራቅ አቅጣጫ 104 ኪሎ ሜትር ይርቃል፡፡ የሐይቁ ስፋት ወደ40 ሄክታር የሚገመት ሲሆን ጥልቀቱ ከ70 ሜትር በላይ እንደሆነ ይገመታል። ሐይቁ ዙሪያ ዳር ዳሩን የፍል ወኔ ምንጮች አሉት፣ ለመዝናኛና ትምህርታዊ ቱሪዝም የሚሆን መስህብ ነው።
          """,
    ),
    Data(
      image: "images/images (5).jpg",
      name: "ቦዮ ሓይቅ",
      description:
          """ቦዮ ሐይቅ (በሻሾጎ ወረዳ በ16 ቀበሌያት መሀከል የሚገኝ ሲሆን ከሆሳዕና በስተምሥራቅ አቅጣጫ 50 ኪሎ ሜትር ይርቃል። የሐይቁ ስፋት በክረምት ወራት 6500 ሄክታር የሚሸፍን ሲሆን ጥልቀቱ ከ6 – 8 ሜትር ይሆናል። ሐይቁ የበርካታ ወፎች መኖሪያና ወቅት ጠብቀው የሚመጡ የውጭ ሀገራት ወፎች ማረፊያና መቆያ ስለሆነ የወፎች መመልከት ቱሪዝም መስህብ በመሆን ያገለግላል።)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ፍንጩዋ ፏፏቴ",
      description:
          """ፍንጩዋ ፏፏቴ (በምሥራቅ ባዳዋቾ ወረዳ በሌንዳ ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በምሥራቃዊ ሰሜን ምሥራቅ አቅጣጫ 94 ኪሎ ሜትር ይርቃል። ፏፏቴው በዋራ ወንዝ ላይ የተፈጠረና በግምት ከ30 ሜትር ከፍታ የሚወርድ ለእይታ ውብና ማራኪ ፏፏቴ ነው፡፡)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "አደቤ ፏፏቴ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ዋራ ፏፏቴ",
      description: """ዋራ ፏፏቴ (በሻሾጎ ወረዳ በዶዕሻ ቤለዬ ቀበሌ

የሚገኝ ሲሆን ከሆሳዕና በስተምሥራቅ አቅጣጫ

34 ኪሎ ሜትር ይርቃል። ፏፏቴው በዋራ ወንዝ ላይ

የተፈጠረና በግምት ከ20 ሜትር ከፍታ የሚወርድ እንዲሁም ዙሪያ አካባቢው በደን የተሸፈነ በመሆኑ ለእይታ ውብና ማራኪ ፏፏቴ ነው፡፡)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ሀብቾ ፏፏቴ",
      description:
          """ሀብቾ ፏፏቴ (በጎምቦራ ወረዳ በአዴአና ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በስተምዕራብ አቅጣጫ 32 ኪሎ ሜትር ይርቃል። ፏፏቴው በሀብቾ ወንዝ ላይ የተፈጠረና በግምት ከ40 ሜትር ከፍታ የሚወርድ እንዲሁም ዙሪያ አካባቢው በደን የተሸፈነ በመሆኑ""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "አገሜና ሆጄ ፏፏቴ",
      description: """አገሜና ሆጄ ፏፏቴ

(በጎምቦራ ወረዳ በኦርዴ ቦብቶ ቀበሌ የሚገኝ ሲሆን

ከሆሳዕና በስተምዕራብ አቅጣጫ 40 ኪሎ ሜትር ይርቃል። ፏፏቴው በጎምቦራ ወንዝ ላይ የተፈጠረና በግምት ከ70 ሜትር ከፍታ የሚወርድ ፏፏቴው የሚወርድበት የፊት ለፊቱ አካባቢ በደን የተሸፈነ በመሆኑ ለእይታ ውብና ማራኪ ፏፏቴ

ነው፡፡)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ግሮ ፏፏቴ",
      description:
          """ግሮ ፏፏቴ (በዱና ወረዳ በስንጊዬ ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በስተደቡብ አቅጣጫ 49 ኪሎ ሜትር ይርቃል። ፏፏቴው በሰንጊዬ እንዲሁም ዙሪያ

ተራራ ሥር የተፈጠረና በግምት ከ40 ሜትር ከፍታ የሚወርድ

አካባቢው በደን የተሸፈነ በመሆኑ ለእይታ ውብና ማራኪ ፋፋቱ ነው።)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ዋሪቄ ፏፏቴ",
      description:
          """ዋሪቄ ፏፏቴ (በጊዜ ወረዳ በገዳና : ኮዳዳ ኪዳዳ ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በስተምዕራብ አቅጣጫ ኪሎ ... ሜትር 42 ኪሎ ይርቃል። በህምባንቾ ወንዝ ላይ፡ የተፈጠረና በግምት 130 ሜትር ከፍታ የሚወርድ : እንዲሁም ዙሪያ አካባቢው በደን - የተሸፈነ በመከተ ለእይታ ውብና ማራኪ ፋፋቴ ነው።""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ሁነሴ",
      description:
          """ሁነሴ (በጊቤ ወረዳ በአምቦሮ ጎይነና ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በስተምዕራብ አቅጣጫ 39 ኪሎ ሜትር ይርቃል።

ሁነሴ ተፈጥሯዊ ደን በውስጡ በርካታ የዱር እንስሳት ተጠልለውበት ይገኛሉ። ደኑን መሀል ለመሀል የዞተሬ ወንዝ አቋርጦት ስለሚያልፍ ለእይታ ምቹ እንዲሆን አድርጎታል።)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ባቴና ዋሻዎች",
      description:
          """ባቱና ዋሻዎች (በሆሳዕና ከተማ አስተዳደር በሄጦ ቀበሌ በሆሳዕና በስተ አቅጣጫ ይገኛል። የባቱና ዋሻዎች በቁጥር ከሁለት በላይ ሆነው በባቴና ወንዝ በሁለቱ ወገን ግድግዳዎች የተቆፈሩ ሰው ሠራሽ ዋሻዎች ናቸው፡፡)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ኦሊዳ ዋሻ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ሀምበራቾ ዋሻ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ሲቢያ ዋሻ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ሃደዬ ዋሻ",
      description: "fhfjhjvjk",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ሾንቆላ",
      description:
          "ሾንቆላ ተራራ (በሶሮ ወረዳ በሾንቆላ ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በስተደቡብ አቅጣጫ 24 ኪሎ ሜትር ይርቃል። ከፍታው ከባህር ጠለል በላይ 2800 ሜትር ሲሆን ለተራራ መውጣት ስፖርት፣ ለመዝናኛና ለትምህርታዊ ቱሪዝም የሚሆን መስህብ ነው::)",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ስንጊዬ",
      description:
          """ስንጊዬ ተራራ (በዱና ወረዳ በስንጊዬ ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በስተደቡብ አቅጣጫ 42 ኪሎ ሜትር ይርቃል። ከፍታው ከባህር ጠለል በላይ 2970 ሜትር ሲሆን ለተራራ መውጣት ስፖርት፣ ለመዝናኛና ለትምህርታዊ ቱሪዝም የሚሆን መስህብ ነው፡፡

3. ከላላሞ ተራራ (በጊቤ ወረዳ በአዎሳ ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በስተምዕራብ አቅጣጫ 45 ኪሎ ሜትር ይርቃል። ከፍታው ከባህር ጠለል በላይ 1880 ሜትር ሲሆን ለተራራ መውጣት ስፖርት ለመዝናኛና ለትምህርታዊ ቱሪዝም የሚሆን መስህብ ነው፡፡)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ክላላሞ",
      description:
          """ከላላሞ ተራራ (በጊቤ ወረዳ በአዎሳ ቀበሌ የሚገኝ ሲሆን ከሆሳዕና በስተምዕራብ አቅጣጫ 45 ኪሎ ሜትር ይርቃል። ከፍታው ከባህር ጠለል በላይ 1880 ሜትር ሲሆን ለተራራ መውጣት ስፖርት፣ ለመዝናኛና ለትምህርታዊ ቱሪዝም የሚሆን መስህብ ነው፡፡)""",
    ),
    Data(
      image: "images/mechefera.jpg",
      name: "ሃይማኖቶች ",
      description: "fhfjhjvjk",
    ),
    // ... add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  builder: (context) => DetailPage(
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
