import 'dart:math';
import 'package:festival_post_app/models/app_models.dart';
import 'package:festival_post_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  late LiquidController liquidController;
  bool isCheck = false;

  @override
  void initState() {
    super.initState();
    liquidController = LiquidController();
  }

  List<AppModels> allQuotes =
      allFestivalData.map((data) => AppModels.fromMap(data: data)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'lib/assets/decoration_image/bg_img_2.png',
          fit: BoxFit.fitWidth,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isCheck = !isCheck;
              });
            },
            icon: isCheck
                ? const Icon(Icons.grid_view_rounded)
                : const Icon(Icons.pages),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isCheck
            ? Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: CardSwiper(
                      cardsCount: allFestival.length,
                      cardBuilder: (context, index, percentThresholdX,
                          percentThresholdY) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              'detail_page',
                              arguments: allFestival[index],
                            );
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(allFestival[index].image),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      allFestival[index].name,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  right: 20,
                                  child: IconButton(
                                    icon: const Icon(Icons.favorite,
                                        color: Colors.red),
                                    onPressed: () {
                                      // Add your favorite logic here
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Spacer(),
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          opacity: 0.5,
                          image: AssetImage(
                              'lib/assets/decoration_image/bg_img_1.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ],
              )
            : Stack(
                children: <Widget>[
                  LiquidSwipe.builder(
                    itemCount: allFestival.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            'detail_page',
                            arguments: allFestival[index],
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              allFestival[index].image),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius:
                                            const BorderRadius.vertical(
                                                top: Radius.circular(15)),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 20,
                                      right: 20,
                                      child: IconButton(
                                        icon: const Icon(Icons.favorite,
                                            color: Colors.red),
                                        onPressed: () {
                                          // Add your favorite logic here
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Details Section
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.orange.shade100
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: const BorderRadius.vertical(
                                        bottom: Radius.circular(15)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 10,
                                        offset: Offset(0, -4),
                                      ),
                                    ],
                                  ),
                                  padding: const EdgeInsets.all(30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        allFestival[index].name,
                                        style: const TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepOrange,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 5.0,
                                              color: Colors.black26,
                                              offset: Offset(2.0, 2.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        allFestival[index].description,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.black87,
                                          height: 1.5,
                                          fontStyle: FontStyle.italic,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const Spacer()
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    positionSlideIcon: 0.8,
                    slideIconWidget:
                        const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPageChangeCallback: (int lpage) {
                      setState(() {
                        page = lpage;
                      });
                    },
                    waveType: WaveType.liquidReveal,
                    liquidController: liquidController,
                    enableSideReveal: true,
                    ignoreUserGestureWhileAnimating: true,
                    enableLoop: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        const Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(allFestival.length,
                              (index) {
                            double selectedness = Curves.easeOut.transform(
                              max(0.0, 1.0 - (page - index).abs()),
                            );
                            double zoom = 1.0 + (2.0 - 1.0) * selectedness;
                            return Container(
                              width: 25.0,
                              child: Center(
                                child: Material(
                                  color: Colors
                                      .deepOrange, // Changed to festival color
                                  type: MaterialType.circle,
                                  child: Container(
                                    width: 8.0 * zoom,
                                    height: 8.0 * zoom,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 45),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange.shade300,
                              Colors.orange.shade100,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            liquidController.animateToPage(
                                page: allFestival.length - 1, duration: 700);
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          child: const Text(
                            "Skip to End",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
