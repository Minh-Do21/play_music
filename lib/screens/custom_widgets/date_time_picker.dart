import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showModalDateTimePicker(
    {required BuildContext context,
    Function(DateTime)? selectedDate,
    DateTime? initDate,
    int minimumYear = 1900,
    int maximumYear = 2100}) {
  var _selectedDate = DateTime.now();
  if (initDate != null) {
    _selectedDate = initDate;
  }
  showModalBottomSheet(
      isScrollControlled: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => Container(
          height: 300,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff999999),
                        width: 0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CupertinoButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 5,
                        ),
                        child: const Text('CANCEL'),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          selectedDate!(_selectedDate);
                          Navigator.pop(context);
                        },
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 5),
                        child: Text('SELECT'),
                      )
                    ],
                  ),
                ),
                Flexible(
                    child: Container(
                        child: CupertinoDatePicker(
                  initialDateTime: _selectedDate,
                  onDateTimeChanged: (DateTime newdate) {
                    _selectedDate = newdate;
                  },
                  minimumYear: minimumYear,
                  maximumYear: maximumYear,
                  mode: CupertinoDatePickerMode.date,
                )))
              ])));
}
