import 'package:flutter/material.dart';
import 'package:flutter_template/components/loaders/three_dot_loader.dart';

class RoundButton extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Color textColor;
  final Function onPressed;
  final bool loading;

  RoundButton({
    this.backgroundColor,
    this.buttonText,
    this.textColor,
    this.onPressed,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Stack(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  splashColor: this.backgroundColor,
                  color: this.backgroundColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: buttonText,
                      ),
                    ],
                  ),
                  onPressed: onPressed,
                ),
              ),
            ],
          ),
          Visibility(
            visible: loading,
            child: Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ThreeDotLoader(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
