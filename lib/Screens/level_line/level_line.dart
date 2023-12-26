import 'package:auto_leveling/blocs/level_line/level_line_bloc.dart';
import 'package:auto_leveling/constant/colors.dart';
import 'package:auto_leveling/constant/styles.dart';
import 'package:auto_leveling/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LevelLineScreen extends StatefulWidget {
  const LevelLineScreen({super.key});

  @override
  State<LevelLineScreen> createState() => _LevelLineScreenState();
}

class _LevelLineScreenState extends State<LevelLineScreen> {
  LevelLineBloc levelLineBloc = LevelLineBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'New Level Line',
            textAlign: TextAlign.center,
          ),
          backgroundColor: bgWhite,
          foregroundColor: bgBlack,
          centerTitle: true,
          elevation: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: BlocBuilder<LevelLineBloc, LevelLineState>(
              bloc: levelLineBloc,
              builder: (context, state) {
                return buildPointInputSection(context);
              }),
        ));
  }
}

// Build General InfoSection for start the project
Widget buildGeneralInfoSection() {
  final _formKey = GlobalKey<FormState>();
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Project Details',
          style: primaryFontStyle,
        ),
        const SizedBox(
          height: 15,
        ),
        Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: inputFormDecoration.copyWith(
                      labelText: 'Level Line Name',
                      hintText: 'ex: Horana-Ingiriya Rd (5km) ICS'),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter New Level Line";
                    }
                    return null;
                  },
                  onChanged: (val) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: inputFormDecoration.copyWith(
                      labelText: 'Surveyor', hintText: 'ex: Ranil Perera'),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter Surveyor name";
                    }
                    return null;
                  },
                  onChanged: (val) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: inputFormDecoration.copyWith(
                      labelText: 'Collimation Error', hintText: 'ex : 0.031'),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter collimation error";
                    }
                    return null;
                  },
                  onChanged: (val) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: inputFormDecoration.copyWith(
                      labelText: 'Instrument', hintText: 'ex : Sokkia - A40B'),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter Instrument name";
                    }
                    return null;
                  },
                  onChanged: (val) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                // const Divider(
                //   height: 40,
                //   thickness: 1,
                //   color: Color.fromARGB(255, 83, 83, 83),
                // ),
                TextFormField(
                  decoration: inputFormDecoration.copyWith(
                      labelText: 'Start TBM point', hintText: 'ex: GPS02'),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter Start point name";
                    }
                    return null;
                  },
                  onChanged: (val) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: inputFormDecoration.copyWith(
                      labelText: 'Start Point Reduced level',
                      hintText: 'ex: 102.635'),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter Reduced Level";
                    }
                    return null;
                  },
                  onChanged: (val) {},
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: primaryButtonStyle,
                      onPressed: () {},
                      child: const Text('NEXT'),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

// Build Point InputSection
Widget buildPointInputSection(context) {
  final _formKey = GlobalKey<FormState>();
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Text('Point : ',
                style: bodyTextStyle.copyWith(fontWeight: FontWeight.w600)),
            const Text('TBM 012', style: bodyTextStyle),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              decoration: topicDecoration,
              height: 55,
              width: 110,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Back Sight',
                style: primaryFontStyle,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextFormField(
                decoration: inputFormDecoration.copyWith(
                    labelText: 'Back Sight Reading', hintText: 'ex: GPS02'),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Enter Back Sight Staff Reading";
                  }
                  return null;
                },
                onChanged: (val) {},
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: topicDecoration,
              height: 55,
              width: 110,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Remarks',
                style: primaryFontStyle,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextFormField(
                decoration: inputFormDecoration.copyWith(
                    labelText: 'Fore Sight Point Name',
                    hintText: 'ex: TP01/A4'),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Enter Fore Sight Point Name";
                  }
                  return null;
                },
                onChanged: (val) {},
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Container(
              decoration: topicDecoration,
              height: 55,
              width: 110,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Fore Sight',
                style: primaryFontStyle,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextFormField(
                decoration: inputFormDecoration.copyWith(
                    labelText: 'Fore Sight Reading', hintText: 'ex: GPS02'),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Enter Back Sight Staff Reading";
                  }
                  return null;
                },
                onChanged: (val) {},
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            OutlinedButton(
              style: outlineButton,
              onPressed: () {
                _showReduceLevelTableModal(context);
              },
              child: const Text('REDUCED LEVEL'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 20,
              color: hrGray,
              thickness: 1,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: primaryButtonStyle,
              onPressed: () {},
              child: const Text('NEXT POINT'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Or',
              style: primaryFontStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: primaryButtonStyle,
              onPressed: () {},
              child: const Text('CLOSED LEVEL LINE'),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ],
    ),
  );
}

// Modal- Reduce Level Table
void _showReduceLevelTableModal(context) {
  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
    context: context,
    backgroundColor: const Color.fromARGB(0, 255, 255, 255),
    builder: (BuildContext context) {
      return Center(
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.75,
          decoration: tileDecoration.copyWith(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              color: bgWhite),
          padding: const EdgeInsets.all(22.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'REDUCED LEVELS',
                  style: primaryFontStyle,
                ),
                const Divider(
                  height: 40,
                  color: hrGray,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: topicDecoration,
                      height: 50,
                      width: 85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 5),
                      child: const Text(
                        'Back Sight',
                        style: tileTextStyle,
                      ),
                    ),
                    Container(
                      decoration: topicDecoration,
                      height: 50,
                      width: 85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 5),
                      child: const Text(
                        'Fore Sight',
                        style: tileTextStyle,
                      ),
                    ),
                    Container(
                      decoration: topicDecoration,
                      height: 50,
                      width: 85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 5),
                      child: const Text(
                        'Reduced Level',
                        style: tileTextStyle,
                      ),
                    ),
                    Container(
                      decoration: topicDecoration,
                      height: 50,
                      width: 85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 5),
                      child: const Text(
                        'Remarks',
                        style: tileTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: topicDecoration.copyWith(color: bgWhite),
                      height: 50,
                      width: 85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 15),
                      child: const Text(
                        '2.365',
                        style: tileTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: topicDecoration.copyWith(color: bgWhite),
                      height: 50,
                      width: 85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 15),
                      child: const Text(
                        '',
                        style: tileTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: topicDecoration.copyWith(color: bgWhite),
                      height: 50,
                      width: 85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 15),
                      child: const Text(
                        '102.3651',
                        style: tileTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: topicDecoration.copyWith(color: bgWhite),
                      height: 50,
                      width: 85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 15),
                      child: const Text(
                        'TBM-15N',
                        style: tileTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100.0),
                OutlinedButton(
                  style: outlineButton,
                  onPressed: () {
                    Navigator.pop(
                        context); // Close the modal when the button is pressed
                  },
                  child: const Text('CLOSE'),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      );
    },
  );
}

// End level line
Widget buildEndLevelLine() {
  final _formKey = GlobalKey<FormState>();
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Text('Point : ',
                style: bodyTextStyle.copyWith(fontWeight: FontWeight.w600)),
            const Text('TBM 012', style: bodyTextStyle),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              decoration: topicDecoration,
              height: 55,
              width: 110,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Actual RL',
                style: primaryFontStyle,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                decoration: topicDecoration.copyWith(color: bgWhite),
                height: 55,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: const Text(
                  '100.1231',
                  style: primaryFontStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: topicDecoration,
              height: 55,
              width: 110,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Obtain RL',
                style: primaryFontStyle,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                decoration: topicDecoration.copyWith(color: bgWhite),
                height: 55,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: const Text(
                  '100.1231',
                  style: primaryFontStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Container(
              decoration: topicDecoration,
              height: 55,
              width: 110,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Error',
                style: primaryFontStyle,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                decoration: topicDecoration.copyWith(color: bgWhite),
                height: 55,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Text(
                  '0.0000',
                  style: primaryFontStyle.copyWith(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Column(
          children: [
            OutlinedButton(
              style: outlineButton,
              onPressed: () {},
              child: const Text('Distribute error'),
            ),
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
              style: primaryButtonStyle,
              onPressed: () {},
              child: const Text('SAVE'),
            ),
          ],
        ),
      ],
    ),
  );
}
