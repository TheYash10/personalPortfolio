import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'area_info.dart';
import 'coding.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.23,
              child: Container(
                color: Color(0xFF242430),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Spacer(
                      flex: 2,
                    ),
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/dusra.jpg"),
                    ),
                    const Spacer(),
                    Text(
                      "Yash Jariwala",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Text(
                      "Flutter Developer & Competitive Coder \nin LeetCode",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w200, height: 1.5),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfo(
                      title: "Residence",
                      text: "Gujarat",
                    ),
                    const AreaInfo(
                      title: "City",
                      text: "Surat",
                    ),
                    const AreaInfo(
                      title: "Age",
                      text: "21",
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding),
                          child: Text(
                            "Skills",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        const Skills(),
                      ],
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Coding(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
