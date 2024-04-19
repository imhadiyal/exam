import 'package:exam/headers.dart';
import 'package:exam/utils/globals_utils.dart';
import 'package:flutter/cupertino.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> data = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Data Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter grid",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide:
                        BorderSide(style: BorderStyle.solid, strokeAlign: 10),
                  ),
                ),
                initialValue: Globals.globals.user.student_grid,
                onSaved: (val) {
                  Globals.globals.user.student_grid = val;
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please Enter Features";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide:
                        BorderSide(style: BorderStyle.solid, strokeAlign: 10),
                  ),
                ),
                initialValue: Globals.globals.user.student_name,
                onSaved: (val) {
                  Globals.globals.user.student_name = val;
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please Enter Features";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter std",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide:
                        BorderSide(style: BorderStyle.solid, strokeAlign: 10),
                  ),
                ),
                initialValue: Globals.globals.user.student_standard,
                onSaved: (val) {
                  Globals.globals.user.student_standard = val;
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please Enter Features";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  User u = User();
                  bool validater = data.currentState!.validate();
                  if (validater) {
                    data.currentState!.save();
                    u.student_name = Globals.globals.user.student_name;
                    u.student_grid = Globals.globals.user.student_grid;
                    u.student_standard = Globals.globals.user.student_standard;

                    Globals.globals.allUsers.add(u);

                    Navigator.pop(context);
                  }
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade400,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
