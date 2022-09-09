import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activeIndex = 0;
  List listStock = [
    "images/v6.jpg",
    "images/v7.jpg",
    "images/v5.jpg",
    "images/v4.jpg",
  ];
  // final _imageUrls = [
  //   "images/vegitable.jpg",
  //   "images/vegitable.jpg",
  //   "images/vegitable.jpg",
  //   "images/vegitable.jpg",
  // ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 180,
              width: 350,
              child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  controller: PageController(viewportFraction: 1),
                  itemCount: listStock.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 180,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(
                            listStock[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // child:
                    );
                  }),
            ),
            // CarouselSlider.builder(
            //   itemCount: _imageUrls.length,
            //   options: CarouselOptions(
            //     height: 250,
            //     viewportFraction: 1,
            //     pageSnapping: false,
            //     enableInfiniteScroll: false,
            //     enlargeCenterPage: true,
            //     enlargeStrategy: CenterPageEnlargeStrategy.height,
            //     autoPlay: true,
            //     //reverse: true,
            //     autoPlayInterval: Duration(seconds: 2),
            //     onPageChanged: (index, reason) => setState(() {
            //       activeIndex = index;
            //     }),
            //   ),
            //   itemBuilder: (context, index, realIndex) {
            //     final urlimages = _imageUrls[index];
            //     return buildImage(urlimages, index);
            //   },
            // ),
            // Container(
            //   height: 210,
            //   alignment: Alignment.bottomCenter,
            //   child: buildIndicator(),
            // ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    listStock.length,
                    (index) => Indicator(
                      isActive: activeIndex == index ? true : false,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 180,
              alignment: Alignment.center,
              child: Text(
                "Fresh Vagetable",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // buildIndicator() => AnimatedSmoothIndicator(
  //       activeIndex: activeIndex,
  //       count: listStock.length,
  //     );
  //
  // Widget buildImage(String urlimages, int index) => Container(
  //       margin: EdgeInsets.symmetric(horizontal: 5),
  //       color: Colors.white,
  //       child: Image.asset(
  //         urlimages,
  //         fit: BoxFit.cover,
  //       ),
  //     );
}

class Indicator extends StatelessWidget {
  final bool isActive;
  Indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      height: 8.0,
      width: isActive ? 12.0 : 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: isActive ? Colors.green : Colors.white,
      ),
    );
  }
}
