import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:via_green/core/components/components.dart';
import 'package:via_green/core/const/consts.dart';
import 'package:via_green/wed_feature/home_layout/cubit/home_cubit.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'About Us',
                    style: GoogleFonts.combo(
                      fontSize: 60,
                      color: teal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/About/under.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'welcome To Via More Greens',
                    style: GoogleFonts.msMadi(
                      fontSize: 60,
                      color: teal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'A LITTLE STORY ABOUT US',
                    style: GoogleFonts.pacifico(
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Via More Greens industry is One of the largest companies in the ﬁeld of producing organicherbs,seeds, spices and vegetables.\n We have the latest and best production lines in this ﬁeld to reachhigh quality products to achieve the desire and satisfaction of our customers.\n We have an integrated andhighly experienced team in the ﬁeld of production and agriculture working hard to reach the highestquality in production efficiency.',
                    style: textTheme(fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  color: Colors.grey.shade50,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(60.0),
                            child: SizedBox(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/About/garlic.png',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 120,
                            ),
                            child: SizedBox(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/About/Plantes.png',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 80
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Our vision',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  color: teal,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Via More Green Industries become one of the best\n international companies offering high qualityproducts to its customers. \nWe are the ﬁrst choice for consumers and importers who are\n looking for quality and honesty in this ﬁeld. \nOur products are always above the expectations of our customers.\n And scientiﬁc tools',
                                textAlign: TextAlign.center,
                                style: textTheme(fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 120,
                      ),
                      child: SizedBox(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/About/Orange.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 80

                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Our mission',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  color: teal,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Providing products to the consumer and importer of\n high quality and at the best prices available in a\ntimely manner',
                                textAlign: TextAlign.center,
                                style: textTheme(fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Container(
                  color: Colors.grey.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/About/green.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                        Column(
                          children: [
                            Text(
                              'Our principles',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                fontSize: 30,
                                color: teal,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                      color: Colors.black,
                                      width: .5
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '\nTo adhere to the highest quality and honesty in the delivery of our\n\n products. We spare no eort to meet the needs of our customers and be\n\nWe are the ﬁrst choice for consumers and importers who are\n\n above their expectations. We seek to build and maintain strong \n\nprofessional and personal relationships with our clients and gain their.\n trust and satisfaction .\n',
                                  textAlign: TextAlign.start,

                                  style: textTheme(fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Our Logistics',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lato(
                              fontSize: 30,
                              color: teal,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                    color: Colors.black,
                                    width: .5
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '\n	Our Shipping Department Will Work hard to Assure that your\n\n Reputation with All the Respected Shipping Lines in Egypt,\n\nWe have verities of the shipping Method As\n\n -Dry container\n\n-Air\n\n-LCL.\n',
                                textAlign: TextAlign.start,

                                style: textTheme(fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/About/Fresh green sprig.jpg',
                              fit: BoxFit.cover,
                              height: 400,
                            )),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
