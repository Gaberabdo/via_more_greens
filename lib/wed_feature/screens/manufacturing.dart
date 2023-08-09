import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:via_green/wed_feature/home_layout/cubit/home_cubit.dart';

import '../../core/components/components.dart';
import '../../core/const/consts.dart';

class ManufacturingScreen extends StatelessWidget {
  const ManufacturingScreen({Key? key}) : super(key: key);

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
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'MANUFACTURING',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lobster(
                      fontSize: 40,
                      color: teal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/MANUFACTURING/about.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'THE FACTORY',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      fontSize: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'We have a factory that contains the latest equipment and machines\navailable in this field according to all quality standards and safety and a\nnumber of workers with high experience in the field of production of herbs,\nseeds and vegetables',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Discover',
                            style: TextStyle(
                              fontSize: 18,
                              color: teal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'At Organic Green Facility for our Herbs and spices we do',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Material(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                              child: Column(
                                children: [
                                  Image.asset(
                                    width: 90,
                                    height: 90,
                                    'assets/MANUFACTURING/Blending-removebg-preview.png',
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text('Blending'),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Material(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                              child: Column(
                                children: [
                                  Image.asset(
                                    width: 90,
                                    height: 90,
                                    'assets/MANUFACTURING/clearing-removebg-preview.png',
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text('Clearing'),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Material(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                              child: Column(
                                children: [
                                  Image.asset(
                                    width: 90,
                                    height: 90,
                                    'assets/MANUFACTURING/grinding-removebg-preview.png',
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text('Grinding'),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Material(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                              child: Column(
                                children: [
                                  Image.asset(
                                    width: 90,
                                    height: 90,
                                    'assets/MANUFACTURING/packing-removebg-preview.png',
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text('Packing'),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Material(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                              child: Column(
                                children: [
                                  Image.asset(
                                    width: 90,
                                    height: 90,
                                    'assets/MANUFACTURING/sizing-removebg-preview.png',
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text('Sizing'),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Material(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                              child: Column(
                                children: [
                                  Image.asset(
                                    width: 90,
                                    height: 90,
                                    'assets/MANUFACTURING/sorting-removebg-preview.png',
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text('Sorting'),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/MANUFACTURING/Lab.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/MANUFACTURING/about.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'PRODUCTION AREA',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      fontSize: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'We have a factory that contains the latest equipment and machines\navailable in this field according to all quality standards and safety and a\nnumber of workers with high experience in the field of production of herbs,\nseeds and vegetables',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/MANUFACTURING/lap2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/MANUFACTURING/lap3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/MANUFACTURING/lap3.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: Colors.grey.shade50,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Microbiology Lap',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.cairo(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Our company have followed the latest quality methods which maintain the\nhighest levels of food safety. So the company has established different\nquality laboratories which have been provided with numerous devices,\nequipment’s, techniques and analytical methods',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.cairo(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Microbiology Lap',
                                  style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                    'In it , we have tested ( T.P.C, E.coli, coliform groups, salmonella SPP, mould and yeast, Enter obacteria , Sulphte reducing bacteria, Bacillus cereus, Campylobater SPP., clostridium perfringens, fecal coliform, staph aureas, shigella, listeria moncytogem ). Outside of our company, we have done analysis of pesticides residues, heavy metals, and Aflatoxins at QCAP Lab (Central Laboratory Analysis of Residues Pesticides and Heavy Metals In Food). In addition to all of this, the Ministry of Agriculture has ensured our samples safety.',
                                    textAlign: TextAlign.start,
                                    style:
                                        textTheme(fontWeight: FontWeight.w800),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/MANUFACTURING/lap7.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/MANUFACTURING/lap5.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Text(
                                  'Chemical Lap',
                                  style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                    'In our chemical lab, we have tested (determined moisture, total ash and essential oils).',
                                    textAlign: TextAlign.center,
                                    style:
                                        textTheme(fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Physical Lab',
                                  style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                    'In our physical lab, we have tested (density, size by sieves, foreign matter, color and odor)',
                                    textAlign: TextAlign.center,
                                    style:
                                        textTheme(fontWeight: FontWeight.w800),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/MANUFACTURING/lap6.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Stores Area',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lato(
                              fontSize: 30,
                              color: teal,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border:
                                    Border.all(color: Colors.black, width: .5)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '\nIn our stores as shown in our pictures, we keen on keeping the raw\n\nand processed goods clean and arranged.',
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
                            'assets/MANUFACTURING/area.png',
                            fit: BoxFit.fitWidth,
                            height: 250,
                          ),
                        ),
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
