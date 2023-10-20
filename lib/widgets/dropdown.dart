import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:provider/provider.dart';

import '../values/size_font.dart';
import '../view_model/lulab_view_model.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: Consumer<LulabViewModel>(builder: (_, clubsData, child) {
          return Center(
              child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                      isExpanded: true,
                      customButton: Text(
                        'Clubs',
                        style: TextStyle(
                            color: Colors.white, fontSize: Font.navbar),
                        overflow: TextOverflow.ellipsis,
                      ),
                      items: clubsData.clubname
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        int index = clubsData.clubname.indexOf(value!);
                        clubsData.chooseClub(index);
                        Provider.of<LulabViewModel>(context, listen: false)
                            .animateToPage(1);
                      },
                      buttonStyleData: ButtonStyleData(
                        height: 50,
                        width: 160,
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: const Color.fromARGB(0, 0, 0, 0)),
                        elevation: 2,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color.fromARGB(0, 255, 0, 0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(196, 255, 255, 255),
                                offset: Offset(5.0, 5.0),
                                blurRadius: 10.0,
                                spreadRadius: 2.0)
                          ],
                        ),
                        offset: const Offset(-70, -10),
                        scrollbarTheme: ScrollbarThemeData(
                            radius: const Radius.circular(40),
                            thickness: MaterialStateProperty.all(6),
                            thumbVisibility: MaterialStateProperty.all(true)),
                      ),
                      menuItemStyleData: MenuItemStyleData(
                          height: 40,
                          padding: const EdgeInsets.only(left: 14, right: 14),
                          overlayColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.pressed)) {
                              return const Color.fromARGB(
                                  39, 255, 17, 0); // 如果按下则返回红色
                            }
                            return const Color.fromARGB(
                                18, 29, 123, 200); // 否则返回蓝色
                          })))));
        }));
  }
}
