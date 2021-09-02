import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
        color: Colors.grey,
        borderRadius: new BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(128, 102, 255, 1),
                  borderRadius: new BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                height: constraints.maxHeight * 0.7,
                child: Image.asset("assets/images/dxc1.png"),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                height: constraints.maxHeight * 0.3,
                width: constraints.maxWidth,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Headline",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 22),
                        ),
                      ),
                      Text(
                        "Hier steht bald ein Text.",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
