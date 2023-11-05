import 'package:flutter/material.dart';
import 'package:nahandroko/constant.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/habit_tile.dart';
import '../components/my_fab.dart';
import '../components/new_habit_box.dart';

// ----------------------------------------------------------------------------


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// ----------------------------------------------------------------------------
class _HomePageState extends State<HomePage> {

  // data structure
  List todaysHabitList = [
    ["Karoty", false],
    ["voataby", true],
    ["tongolo", false],
  ];


  // check bow was tapped
  void checkBoxTapped(bool? value, int index) {
    setState(() {
      todaysHabitList[index][1] =  value;
    });
  }

  // create a new habit
  final _newHabitNameController = TextEditingController();
  void createNexHabit () {
    // show a dialog box
    showDialog(
        context: context,
        builder: (context) {
          return EnterNewHabitBox(
            controller: _newHabitNameController,
            hintText: 'Mampidira zavatra atao ...',
            onSave: saveNewHabit,
            onCancel: cancelNewHabit,
          );
        },
    );
  }

  // save new habit
  void saveNewHabit() {
    setState(() {
      todaysHabitList.add([_newHabitNameController.text, false]);
    });
    Navigator.of(context).pop();
    _newHabitNameController.clear();
  }

  // cancel new habit
  void cancelNewHabit() {
    Navigator.of(context).pop();
    _newHabitNameController.clear();
  }

  // settigns habit
  void openHabitSettings(int index) {
    showDialog(
        context: context,
        builder: (context) {
          return EnterNewHabitBox(
              controller: _newHabitNameController,
              hintText: todaysHabitList[index][0],
              onSave: () => saveExistingHabit(index),
              onCancel: cancelNewHabit,
          );
        }
    );
  }

  // save existing habit
  void saveExistingHabit(int index) {
    setState(() {
      todaysHabitList[index][0] = _newHabitNameController.text;
    });
    _newHabitNameController.clear();
    Navigator.pop(context);
  }

  // delete habit
  void deletedHabit(int index) {
    setState(() {
      todaysHabitList.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightColor,
      floatingActionButton: MyFloatingActionButton(
        onPressed: createNexHabit,
      ),
      body: ListView.builder(
        itemCount: todaysHabitList.length ,
        itemBuilder: (context, index) {
          return HabitTile(
              habitName: todaysHabitList[index][0],
              habitCompleted:  todaysHabitList[index][1],
              onChanged: (value) => checkBoxTapped(value, index),
            settingsTapped: (context) => openHabitSettings(index) ,
            deleteTapped: (context) => deletedHabit(index),
          );
        },
      ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(right: 40, left: 40, bottom: 20),
            height: 50.0,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: kYellowColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(28.0),
                  topLeft: Radius.circular(28.0),
                  bottomLeft: Radius.circular(28.0),
                  bottomRight: Radius.circular(28.0),
                )),
            child: Text(
              "NAHANDRO",
              style:  GoogleFonts.poppins(
                fontSize: 20.0,
                color: kLightColor,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        )
    );
  }
}

// ----------------------------------------------------------------------------