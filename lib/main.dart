// ignore_for_file: prefer_const_constructors, duplicate_ignore, non_constant_identifier_names, deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'בִּיּוּם אוֹיֵב תִּחְקוּר';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        statusBarColor: Colors.black,
        systemNavigationBarDividerColor: Colors.black));

    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: const Color(0xff0b0b0b),
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline6: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(
              fontSize: 16.0, fontFamily: 'Hind', color: Colors.white),
        ),
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var list = [];
  var num_airplan = 1;
  var all_info = "";
  final myInput = TextEditingController();

  myCopy() {
    for (var i = 0; i < list.length; i++) {
      all_info += "\n" + list[i];
    }
  }

  List<int> top = <int>[];
  List<int> bottom = <int>[];

  Widget _buildPopupDialog(BuildContext context) {
    // ignore: unnecessary_new
    return new AlertDialog(
      title: Directionality(
        textDirection: TextDirection.rtl,
        child: Text("אפשרויות נוספות:"),
      ),
      // ignore: unnecessary_new
      // ignore: unnecessary_new
      content: SizedBox(
        height: 150,
        width: double.infinity,
        child: Center(
          // ignore: unnecessary_new
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Row(
                  children: [
                    Center(
                      child: IconButton(
                          icon: Icon(Icons.local_fire_department_sharp, size: 25.0),
                          onPressed: () => {
                                setState(() {
                                  DateTime now = DateTime.now();
                                  list.add(
                                      "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} 🐉 דרקון");
                                  top.add(-top.length - 1);
                                  bottom.add(bottom.length);
                                }),
                                Navigator.of(context).pop(),
                              }),
                    ),
                    Center(child: Text('דרקון',)),
                    Center(
                      child: IconButton(
                          icon: Icon(Icons.animation_sharp, size: 25.0),
                          onPressed: () => {
                                setState(() {
                                  DateTime now = DateTime.now();
                                  list.add(
                                      "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} ☁️ סמוקי");
                                  top.add(-top.length - 1);
                                  bottom.add(bottom.length);
                                }),
                                Navigator.of(context).pop(),
                              }),
                    ),
                    Center(child: Text('סמוקי')),
                    Center(
                      child: IconButton(
                          icon: Icon(Icons.auto_fix_high_outlined, size: 25.0),
                          onPressed: () => {
                                setState(() {
                                  DateTime now = DateTime.now();
                                  list.add(
                                      "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} 🎇 זיקוק");
                                  top.add(-top.length - 1);
                                  bottom.add(bottom.length);
                                }),
                                Navigator.of(context).pop(),
                              }),
                    ),
                    Center(child: Text('זיקוק')),
                  ],
                ),
              ),
              Center(
                child: Row(
                  children: [
                    Center(
                      child: IconButton(
                          icon: Icon(Icons.exposure_minus_1_rounded, size: 25.0),
                          onPressed: () => {
                                setState(() {
                                  if (num_airplan > 1) {
                                    num_airplan -= 1;
                                    var snackBar = SnackBar(
                                      content: Text(
                                          "מעקב אחר כלי טיס מספר $num_airplan"),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  } else {
                                    Navigator.of(context).pop();
                                    var snackBar = SnackBar(
                                      content: const Text(
                                          'מספר המטוסים אינו יכול להיות קטן מ-0'),
                                      action: SnackBarAction(
                                        label: 'הבנתי',
                                        onPressed: () {},
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  }
                                }),
                              }),
                    ),
                    Center(child: Text("הורד")),
                    Center(
                      child: IconButton(
                          icon: Icon(Icons.add, size: 25.0),
                          onPressed: () => {
                                setState(() {
                                  num_airplan += 1;
                                  var snackBar = SnackBar(
                                    content:
                                        Text("מעקב אחר כלי טיס מספר $num_airplan"),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  // ignore: empty_statements
                                }),
                              }),
                    ),
                    Center(child: Text('עלה')),
                    Center(
                      child: IconButton(
                          icon: Icon(Icons.airline_seat_recline_extra_rounded,
                              size: 25.0),
                          onPressed: () => {
                                setState(() {
                                  DateTime now = DateTime.now();
                                  list.add(
                                      // ignore: unnecessary_brace_in_string_interps
                                      "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} תיעוד מטוס מס' ${num_airplan}");
                                  top.add(-top.length - 1);
                                  bottom.add(bottom.length);
                                  Navigator.of(context).pop();
                                }),
                              }),
                    ),
                    Center(child: Text("מ.מטוס")),
                  ],
                ),
              ),
              Center(
                child: Row(
                  children: [
                    Center(
                      child: IconButton(
                          icon: Icon(Icons.reset_tv, size: 25.0),
                          onPressed: () => {
                                setState(() {
                                  // ignore: deprecated_member_use
                                  Widget cancelButton = FlatButton(
                                    child: Text("ביטול"),
                                    onPressed: () => {
                                      Navigator.of(context).pop(),
                                      setState(
                                        () {},
                                      ),
                                    },
                                  );
                                  // ignore: deprecated_member_use
                                  Widget launchButton = FlatButton(
                                    child: Text("מחק הכל"),
                                    onPressed: () => {
                                      Navigator.of(context).pop(),
                                      setState(
                                        () {
                                          bottom.clear();
                                          list.clear();
                                          all_info = "";

                                          var snackBar = SnackBar(
                                            content:
                                                const Text('בוצע איפוס בהצלחה'),
                                            action: SnackBarAction(
                                              label: 'הבנתי',
                                              onPressed: () {},
                                            ),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        },
                                      ),
                                    },
                                  );
                                  // set up the AlertDialog

                                  AlertDialog alert = AlertDialog(
                                    title: Center(
                                      child: Text("לתשומת לבך"),
                                    ),
                                    content: SizedBox(
                                      child: Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Text("האם למחוק את כל הדיווחים?"),
                                      ),
                                    ),
                                    actions: [
                                      cancelButton,
                                      launchButton,
                                    ],
                                  );
                                  // show the dialog

                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert;
                                    },
                                  );
                                })
                              }),
                    ),
                    Center(child: Text('איפוס')),
                    Center(
                      child: Center(
                        child: IconButton(
                            icon: Icon(Icons.theater_comedy_sharp, size: 25.0),
                            onPressed: () => {
                                  Navigator.of(context).pop(),
                                  setState(() {
                                    myCopy();
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        // return object of type Dialog
                                        // ignore: prefer_typing_uninitialized_variables, unused_local_variable
                                        var console;
                                        return AlertDialog(
                                          title: Center(
                                            child: Text('לחיצה ארוכה על הטקסט'),
                                          ),
                                          // ignore: sized_box_for_whitespace
                                          content: Container(
                                            height: 300,
                                            width: 300,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5000,
                                                    child: Directionality(
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      child: SelectableText.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                                // ignore: unnecessary_string_interpolations
                                                                text: "$all_info",
                                                                style: TextStyle(
                                                                    color: Colors.red,
                                                                    fontSize: 13)),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          actions: <Widget>[
                                            // usually buttons at the bottom of the dialog
                                            // ignore: unnecessary_new
                                            new FlatButton(
                                              // ignore: unnecessary_new
                                              child: new Text("!העתקתי, תודה"),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  })
                                }),
                      ),
                    ),
                    Center(child: Text("עתקה")),
                    Center(
                      child: IconButton(
                          icon: Icon(Icons.mail, size: 25.0),
                          onPressed: () => {
                                setState(() {
                                  Navigator.of(context).pop();
                                  var snackBar = SnackBar(
                                    content: const Text(
                                        'פותח ע"י סמ"ר עדיאל כהן בשפת Fluter&Dart של גוגל, לבעיות/שאלות/הצעות עבור שיפור האפליקציה ניתן לשלוח מייל adielcoh@gmail.com'),
                                    action: SnackBarAction(
                                      label: 'הבנתי',
                                      onPressed: () {},
                                    ),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }),
                              }),
                    ),
                    Center(child: Text("אודות")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        // ignore: deprecated_member_use, unnecessary_new
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          // textColor: Theme.of(context).primaryColor,
          child: const Text('סגור'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: Text("בִּיּוּם אוֹיֵב v1.0"),
        toolbarHeight: 60,
        backgroundColor: Colors.red[600],
        actions: <Widget>[
//All my buttons
          IconButton(
//hear
              icon: Icon(Icons.hearing_outlined, size: 25.0),
              onPressed: () => {
                    setState(() {
                      DateTime now = DateTime.now();
                      list.add(
                          "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} חלון אקוסטי");
                      top.add(-top.length - 1);
                      bottom.add(bottom.length);
                    })
                  }),
//eye
          IconButton(
              icon: Icon(Icons.remove_red_eye_rounded, size: 25.0),
              onPressed: () => {
                    setState(() {
                      DateTime now = DateTime.now();
                      list.add(
                          "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} קשר עין");
                      top.add(-top.length - 1);
                      bottom.add(bottom.length);
                    })
                  }),
//fly
          IconButton(
              icon: Icon(Icons.airplanemode_active_outlined, size: 25.0),
              onPressed: () => {
                    setState(() {
                      DateTime now = DateTime.now();
                      list.add(
                          "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} תמרון");
                      top.add(-top.length - 1);
                      bottom.add(bottom.length);
                    })
                  }),
//attack
          IconButton(
              icon: Icon(Icons.my_location_sharp, size: 25.0),
              onPressed: () => {
                    setState(() {
                      DateTime now = DateTime.now();
                      list.add(
                          "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} התקלה");
                      top.add(-top.length - 1);
                      bottom.add(bottom.length);
                    })
                  }),
        ],
      ),
      body: CustomScrollView(
        center: centerKey,
        slivers: <Widget>[
          SliverList(
            key: centerKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.grey[800 + bottom[index] % 2 * 100],
                  height: 30.2,
                  child: Text(
                    "${list[index]}",
                  ),
                );
              },
              childCount: bottom.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_from_trash, size: 30.0),
        mini: true,
        tooltip: 'מוחק',
        onPressed: () => setState(() => {
              // ignore: prefer_is_empty
              if (list.length > 0 && bottom.length > 0)
                {
                  bottom.removeAt(bottom.length - 1),
                  list.removeAt(list.length - 1),
                  all_info = "",
                }
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: Material(
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Center(
              child: Row(
                children: <Widget>[
//All my buttons
//dead
                  IconButton(
                      icon: Icon(Icons.no_accounts_rounded, size: 25.0),
                      onPressed: () => {
                            setState(() {
                              DateTime now = DateTime.now();
                              list.add(
                                  "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} כלי טיס נפל");
                              top.add(-top.length - 1);
                              bottom.add(bottom.length);
                            })
                          }),
//no-fly
                  IconButton(
                      icon: Icon(Icons.airplanemode_inactive, size: 25.0),
                      onPressed: () => {
                            setState(() {
                              DateTime now = DateTime.now();
                              list.add(
                                  "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} סוף תמרון");
                              top.add(-top.length - 1);
                              bottom.add(bottom.length);
                            })
                          }),
//no-eye
                  IconButton(
                      icon: Icon(Icons.visibility_off, size: 25.0),
                      onPressed: () => {
                            setState(() {
                              DateTime now = DateTime.now();
                              list.add(
                                  "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} סוף קשר עין");
                              top.add(-top.length - 1);
                              bottom.add(bottom.length);
                            })
                          }),
//no-hear
                  // ignore: duplicate_ignore
                  IconButton(
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.hearing_disabled_outlined, size: 25.0),
                      onPressed: () => {
                            setState(() {
                              DateTime now = DateTime.now();
                              list.add(
                                  "דיווח: ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} סוף חלון אקוסטי");
                              top.add(-top.length - 1);
                              bottom.add(bottom.length);
                            })
                          }),

                  IconButton(
                    icon: Icon(Icons.touch_app, size: 25.0),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _buildPopupDialog(context),
                      );
                    },
                  ),

                  IconButton(
                      icon: Icon(Icons.create, size: 25.0),
                      onPressed: () => {
                            setState(() {
                              myCopy();
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  // return object of type Dialog
                                  // ignore: prefer_typing_uninitialized_variables, unused_local_variable
                                  var console;

                                  return Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: new Builder(
                                      builder: (BuildContext context) {
                                        return new MediaQuery(
                                          data: MediaQuery.of(context).copyWith(
                                            textScaleFactor: 1.0,
                                          ),
                                          child: AlertDialog(
                                            title: Center(
                                              child: TextField(
                                                controller: myInput,
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'לחץ לשליחה קולית / הקלדה',
                                                  suffixIcon: IconButton(
                                                    onPressed: myInput.clear,
                                                    icon: Icon(Icons.clear),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // ignore: sized_box_for_whitespace
                                            content: Container(
                                              height: 40,
                                              width: 300,
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: <Widget>[
                                                    Text(
                                                      '* יש לבחור במקלדת גוגל עבור שליחת דיווח קולי בעברית. ',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.red),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            actions: <Widget>[
                                              // usually buttons at the bottom of the dialog
                                              // ignore: unnecessary_new
                                              new FlatButton(
                                                // ignore: unnecessary_new
                                                child: new Text("ביטול"),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              // ignore: unnecessary_new
                                              new FlatButton(
                                                  // ignore: unnecessary_new
                                                  child: new Text("שליחה"),
                                                  onPressed: () => {
                                                        setState(() {
                                                          DateTime now =
                                                              DateTime.now();
                                                          list.add(
                                                              "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')} " +
                                                                  myInput.text);
                                                          top.add(
                                                              -top.length - 1);
                                                          bottom.add(
                                                              bottom.length);
                                                        }),
                                                        Navigator.of(context)
                                                            .pop(),
                                                        myInput.text = "",
                                                      }),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            })
                          }),
                ],
              ),
            ),
          ),
          color: Colors.red[600],
        ),
      ),
    );
  }
}
