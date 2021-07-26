import 'package:flutter/material.dart';
import 'package:ziploft/constraints.dart';
import 'package:ziploft/widgets/bobble.dart';
import 'package:ziploft/widgets/amenity_card.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          //Photo
          Positioned(
            top: 0,
            child: Container(
                width: _screenWidth,
                height: _screenHeight / 1.6,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/Photos/naomi-hebert-188443-unsplash.jpg'),
                      fit: BoxFit.cover),
                )),
          ),

          Positioned(
            top: _screenHeight / 2,
            height: _screenHeight / 2,
            width: _screenWidth,
            child: Container(
              padding: const EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                  color: const Color(0xffF3F8FB),
                  boxShadow: [kBottomModalShadowStyle()],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/iOS/Pull-up-bar.png'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'The Montblanc Estate',
                        style: kDetailsTitleTextStyle,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/Indicator/Star-Solid.png'),
                          Image.asset('assets/Indicator/Star-Solid.png'),
                          Image.asset('assets/Indicator/Star-Solid.png'),
                          Image.asset('assets/Indicator/Star-Solid.png'),
                          Image.asset('assets/Indicator/Star-Half.png'),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: _screenWidth,
                    child: const Text(
                      '4 Bed • 2.5 Bath • 2',
                      style: kDetailsSubTitle,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Expanded(
                    child: Text(
                      'Soak in the coastal sun in this renovated condominium in the gated Ritz Pointe community. With great views and a relaxing atmosphere, the apartment also offers a private walk to the beautiful Salt Creek beach.',
                      style: kDetailsBodyTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: _screenWidth,
                    child: const Text(
                      'Amenities',
                      style: kDetailsAmenitiesTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AmenityCard(
                        iconImage:
                            Image.asset('assets/Icon/Amenities/Parking.png'),
                        name: 'Parking',
                      ),
                      AmenityCard(
                        iconImage: Image.asset('assets/Icon/Amenities/TV.png'),
                        name: 'TV',
                      ),
                      AmenityCard(
                        iconImage:
                            Image.asset('assets/Icon/Amenities/Bathtub.png'),
                        name: 'Bathtub',
                      ),
                      AmenityCard(
                        iconImage:
                            Image.asset('assets/Icon/Amenities/Laundry.png'),
                        name: 'Laundry',
                      ),
                      AmenityCard(
                        iconImage: Image.asset('assets/Icon/Amenities/AC.png'),
                        name: 'AC',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Bobble(
                    isGradient: true,
                    topGradientColor: const Color(0xff4587E1),
                    bottomGradientColor: const Color(0xff2FFFFA),
                    width: 250,
                    height: 64,
                    isShadow: false,
                    boxContent: Row(
                      children: [
                        const SizedBox(
                          width: 3,
                        ),
                        Image.asset('assets/Icon/SlideSwitch.png'),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          'Slide to back',
                          style: kDetailsButtonTextStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),

          //Green Button
          Positioned(
            top: 50,
            left: 10.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Bobble(
                  isGradient: false,
                  backgroundColor: const Color(0xff20C278),
                  width: 100,
                  height: 40,
                  isShadow: false,
                  boxContent: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '\$95',
                        style: kDetailsPriceTextStyle,
                      ),
                      Text(
                        '/Night',
                        style: kDetailsUnitTextStyle,
                      ),
                    ],
                  )),
            ),
          ),

          //Favorite
          Positioned(
            child: Image.asset('assets/Button/Favorite.png'),
            top: _screenHeight / 2.2,
            left: 40,
          )
        ],
      ),
    );
  }
}
