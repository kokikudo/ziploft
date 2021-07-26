import 'package:flutter/material.dart';
import 'package:ziploft/constraints.dart';
import 'package:ziploft/widgets/bobble.dart';

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/newMap.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            // 上2つのボタン
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Bobble(
                    isGradient: false,
                    backgroundColor: Colors.white,
                    width: 150,
                    height: 50,
                    isShadow: true,
                    boxContent: Text(
                      '4 Mile Radius',
                      style: kMapButtonTextStyle,
                    ),
                  ),
                  Bobble(
                    isGradient: true,
                    topGradientColor: const Color(0xff00FFF8),
                    bottomGradientColor: const Color(0xff4587E1),
                    width: 150,
                    height: 50,
                    isShadow: true,
                    boxContent: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.exposure_minus_1,
                          color: Colors.white,
                        ),
                        Container(
                          color: Colors.white,
                          height: 50,
                          width: 70,
                          child: const Center(
                            child: Text(
                              '2 Bed',
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.plus_one,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            // したのモーダル
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.80),
                  boxShadow: [kBottomModalShadowStyle()],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  Image.asset('assets/iOS/Pull-up-bar.png'),
                  ListTile(
                    assetURL: 'assets/Photos/naomi-hebert-188443-unsplash.jpg',
                    title: const Text('The Montblanc Estate',
                        style: kMapListTileTitle),
                    subTitle: const Text('4 Bed · 2.5 Bath · 2140 Sq/ft',
                        style: kMapListTileSubTitle),
                    stars: [
                      Image.asset('assets/Indicator/Star-Solid.png'),
                      Image.asset('assets/Indicator/Star-Solid.png'),
                      Image.asset('assets/Indicator/Star-Solid.png'),
                      Image.asset('assets/Indicator/Star-Solid.png'),
                      Image.asset('assets/Indicator/Star-Half.png'),
                    ],
                  ),
                  ListTile(
                    assetURL:
                        'assets/Photos/deborah-cortelazzi-615800-unsplash.jpg',
                    title: const Text('The Montblanc Estate',
                        style: kMapListTileTitle),
                    subTitle: const Text('4 Bed · 2.5 Bath · 2140 Sq/ft',
                        style: kMapListTileSubTitle),
                    stars: [
                      Image.asset('assets/Indicator/Star-Solid.png'),
                      Image.asset('assets/Indicator/Star-Solid.png'),
                      Image.asset('assets/Indicator/Star-Solid.png'),
                      Image.asset('assets/Indicator/Star-Solid.png'),
                      Image.asset('assets/Indicator/Star-Half.png'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListTile extends StatelessWidget {
  const ListTile({
    Key? key,
    required this.assetURL,
    required this.title,
    required this.subTitle,
    required this.stars,
  }) : super(key: key);

  final String assetURL;
  final Text title;
  final Text subTitle;
  final List<Image> stars;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/details');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(assetURL)),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                subTitle,
                Row(
                  children: stars,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
