library box_container;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: must_be_immutable
class BoxContainer extends StatefulWidget {
  BoxContainer({
    Key key,
    @required this.image,
    this.body,
    this.title,
    this.buttonAction,
    this.buttonTitle,
  }) : super(key: key);
   String image="https://assets.justinmind.com/wp-content/webp-express/webp-images/uploads/2018/11/Lorem-Ipsum-alternatives.png.webp",
      title="Lorem Ipsum",
      body="Lorem Ipsum",
      buttonTitle="Lorem Ipsum",
      buttonAction="https://www.justinmind.com/blog/awesome-lorem-ipsum-alternatives";

  @override
  _BoxContainerState createState() => _BoxContainerState();
}

class _BoxContainerState extends State<BoxContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: 440.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black, width: 3.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Container(
              height: 220,
              child: Image.network(widget.image),
            ),
            Spacer(),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
            Spacer(),
            Text(widget.body,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1),
            Spacer(),
            FlatButton(
              child: Text(
                widget.buttonTitle,
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {
                launch(widget.buttonAction);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
