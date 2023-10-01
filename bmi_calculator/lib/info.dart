import 'package:bmi_calculator/txt_en.dart';
import 'package:flutter/material.dart';

class BMIInfo extends StatelessWidget {
  const BMIInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(infoTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              infoArticleTitle,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoParagraph1,
            ),
          ),
          Image.asset(
            'assets/BMI_formula.jpg',
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoArticleSubtitle1,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoParagraph2,
            ),
          ),
          // Standard BMI category table
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
              child: Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          infoTableCategory,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          infoTableBMI,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          infoTableUnderweight,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          infoTableBMIUnderweight,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          infoTableNormal,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          infoTableBMINormal,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          infoTableOverweight,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          infoTableBMIOverweight,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          infoTableObese,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          infoTableBMIObese,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoParagraph3,
            ),
          ),
          // Obese class table
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
              child: Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          obeseTableClass,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          infoTableBMI,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          obeseTableClass1,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          obeseTableBMI1,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          obeseTableClass2,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          obeseTableBMI2,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Text(
                          obeseTableClass3,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          obeseTableBMI3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoArticleSubtitle2,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoParagraph4,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoParagraph5,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoArticleSubtitle3,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoParagraph6,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 5, 40, 10),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                  ),
                ),
                Expanded(
                  child: Text(
                    infoParagraph7,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 40, 10),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                  ),
                ),
                Expanded(
                  child: Text(
                    infoParagraph8,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 40, 5),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                  ),
                ),
                Expanded(
                  child: Text(
                    infoParagraph9,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              infoParagraph10,
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
