import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Profilepage extends StatelessWidget {
  // const Profilepage({super.key});
  final List<String> imgList0 = [
    "images/haddiya03.jpg",
    "images/haddiya04.jpg",
    "images/haddiya06.jpg",
    "images/haddiya05.jpg",
    "images/haddiya10.jpg",
    "images/haddiya1.jpg",
  ];
  final List<String> imgList1 = [
    "images/haddiya7.jpg",
    "images/haddiya13.jpg",
    "images/haddiya24.jpg",
    "images/haddiya4.jpg",
    "images/haddiya07.jpg",
    "images/haddiya08.jpg",
  ];
  final List<String> imgList2 = [
    "images/haddiya013.jpg",
    "images/haddiya09.jpg",
    "images/haddiya010.jpg",
    "images/haddiya011.jpg",
    "images/haddiya012.jpg",
    "images/haddiya014.jpg",
  ];
  final List<String> imgList3 = [
    "images/haddiya9.jpg",
    "images/uu.jpg",
    "images/haddiya3.jpg",
    "images/haddiya4.jpg",
    "images/haddiya5.jpg",
    "images/haddiya8.jpg",
  ];
  final List<String> imgList4 = [
    "images/haddiya12.jpg",
    "images/haddiya16.jpg",
    "images/haddiya19.jpg",
    "images/haddiya18.jpg",
    "images/haddiya5.jpg",
    "images/haddiya6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    List<int> ans0 = [];
    int la = imgList0.length;
    for (int i = 0; i < la; i += 1) {
      ans0.add(i);
    }
    List<int> ans1 = [];
    int lb = imgList1.length;
    for (int j = 0; j < lb; j += 1) {
      ans1.add(j);
    }
    List<int> ans2 = [];
    int lc = imgList2.length;
    for (int i = 0; i < lc; i += 1) {
      ans2.add(i);
    }
    List<int> ans3 = [];
    int ld = imgList3.length;
    for (int i = 0; i < ld; i += 1) {
      ans3.add(i);
    }
    List<int> ans4 = [];
    int le = imgList4.length;
    for (int i = 0; i < le; i += 1) {
      ans4.add(i);
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            CrouselSliderAnimation(
                ans1: ans0, images: imgList0, ans2: const [], ans3: const []),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'The culture Foods of hadiya',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                CrouselSliderAnimation(
                    ans1: ans1,
                    images: imgList1,
                    ans2: const [],
                    ans3: const []),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Hadiya Traditional clothes',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CrouselSliderAnimation(
                        ans1: ans2,
                        images: imgList2,
                        ans2: const [],
                        ans3: const []),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'The greatest people of hadiya',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CrouselSliderAnimation(
                        ans1: ans3,
                        images: imgList3,
                        ans2: const [],
                        ans3: const []),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  ' beautiful nature of hadiya ',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CrouselSliderAnimation(
                        ans1: ans4,
                        images: imgList4,
                        ans2: const [],
                        ans3: const []),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CrouselSliderAnimation extends StatefulWidget {
  const CrouselSliderAnimation({
    Key? key,
    required this.ans1,
    required this.images,
    required this.ans2,
    required this.ans3,
  }) : super(key: key);

  final List<int> ans1;
  final List<int> ans2;
  final List<int> ans3;

  final List<dynamic> images;

  @override
  State<CrouselSliderAnimation> createState() => _CrouselSliderAnimationState();
}

class _CrouselSliderAnimationState extends State<CrouselSliderAnimation> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          width: 400,
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: ((index, reason) {
                setState(() {
                  activeIndex = index;
                });
              }),
              height: 400,
            ),
            items: widget.ans1.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    width: 400,
                    height: 400,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.images[i]),
                                fit: BoxFit.cover),
                          ),
                        )),
                  );
                },
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: widget.images.length,
            effect: const ExpandingDotsEffect(
              dotWidth: 7,
              dotHeight: 7,
            ),
          ),
        ),
      ],
    );
  }
}
