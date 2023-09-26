import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.675,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Lux Hotel\nToronto',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF),
                            height: 1,
                            letterSpacing: -1,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                35,
                              ),
                              color: const Color(0xFF9e9e9e)),
                          child: const Text(
                            '8.4/85 reviews',
                            style: TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: 2.5,
                                letterSpacing: 0.1),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        SizedBox(
                          height: 55,
                        ),
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 450,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Color(0xFF9c27b0),
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Color(0xFF9c27b0),
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Color(0xFF9c27b0),
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Color(0xFF9c27b0),
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xFF9c27b0),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xFF9e9e9e),
                                    size: 18,
                                  ),
                                  Text(
                                    '8 km to centrum',
                                    style: TextStyle(
                                      color: Color(0xFF9e9e9e),
                                      fontSize: 13,
                                      letterSpacing: -0.6,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_outlined,
                                    color: Color(0xFF9c27b0),
                                    size: 25,
                                  ),
                                  //アイコンとテキストと間を詰められない
                                  Text(
                                    '200',
                                    style: TextStyle(
                                      color: Color(
                                        0xFF9c27b0,
                                      ),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -1.4,
                                    ),
                                  ),
                                ],
                              ),
                              //row同士の間を詰められず、テキストを高さを変えている。それにより上のrowが下がってしまい、左のrowと高さが合わない
                              Row(
                                children: [
                                  Text(
                                    '/per nigth',
                                    style: TextStyle(
                                        color: Color(0xFF9e9e9e),
                                        fontSize: 12,
                                        height: 0.5),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 33,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),
                              ),
                              backgroundColor: const Color(0xFF9c27b0)),
                          child: const Text(
                            'Book Now',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DESCRIPTION',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                height: 1.3),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
